module Autogen.Parser
  ( parseDoc
  ) where

import           Autogen.Parser.Types
import           Text.XML.Parser

import           Control.Applicative hiding (optional)
import           Control.Monad
import           Data.Char (isSpace)
import           Data.Foldable
import           Data.List.NonEmpty (NonEmpty (..))
import qualified Data.List.NonEmpty as NonEmpty
import           Text.XML.HaXml hiding (attr, Enumeration, element, Mixed, tag)
import           Text.XML.HaXml.Posn
import           Prelude hiding (Enum, Integer)



mayUntil :: Parser a -> Parser () -> Parser (Maybe a)
mayUntil f g = fmap Just f <|> (Nothing <$ lookAhead g)

someUntil :: Parser a -> Parser () -> Parser (NonEmpty a)
someUntil f g = do
  a <- f
  (:|) a <$> manyUntil f g

manyUntil :: Parser a -> Parser () -> Parser [a]
manyUntil f g = do
  ei <- mayUntil f g
  case ei of
    Nothing -> return []
    Just a  -> (:) a <$> manyUntil f g



parsePlatform :: Parser Platform
parsePlatform =
  element "platform" $
    Platform
      <$> attribute "name"
      <*> attribute "protect"
      <*> optional (attribute "comment")

parsePlatforms :: Parser Platforms
parsePlatforms =
  element "platforms" $
    Platforms
      <$> optional (attribute "comment")
      <*> manyUntil parsePlatform endOfContents



parseTag :: Parser Tag
parseTag = do
  element "tag" $
    Tag
      <$> attribute "name"
      <*> attribute "author"
      <*> attribute "contact"

parseTags :: Parser Tags
parseTags =
  element "tags" $
    Tags
      <$> optional (attribute "comment")
      <*> manyUntil parseTag endOfContents



parseMixed :: Parser Mixed
parseMixed = do
      do Raw <$> string
  <|> do anyElement $ \tag -> Tagged tag <$> string

parseTypeTwo :: Parser TypeTwo
parseTypeTwo =
      do element "member" $
           TypeMember
             <$> attributes
             <*> someUntil parseMixed endOfContents

  <|> do element "comment" $
           TypeComment <$> string

parseTypeFlavor :: Parser TypeFlavor
parseTypeFlavor =
      do TypeOne <$> manyUntil parseMixed endOfContents
  <|> do TypeTwo <$> many parseTypeTwo

parseType :: Parser Type
parseType =
  element "type" $
    Type
      <$> attributes
      <*> parseTypeFlavor

parseTypesElement :: Parser TypesElement
parseTypesElement =
      do TypesElement <$> parseType
  <|> do element "comment" $
           TypesComment <$> string

parseTypes :: Parser Types
parseTypes =
  element "types" $
    Types
      <$> optional (attribute "comment")
      <*> manyUntil parseTypesElement endOfContents



parseEnumFlavor :: Parser EnumFlavor
parseEnumFlavor =
      do EnumPlain
           <$> (Integer <$> attribute "value")
           <*> optional (TypeName <$> attribute "extends")
  <|> do EnumBitmask
           <$> (Integer <$> attribute "bitpos")
           <*> optional (TypeName <$> attribute "extends")
  <|> do EnumExtension
           <$> optional (Integer <$> attribute "extnumber")
           <*> (Integer <$> attribute "offset")
           <*> optional (attribute "dir")
           <*> (TypeName <$> attribute "extends")
  <|> do EnumAlias
           <$> optional (TypeName <$> attribute "extends")
           <*> (TypeName <$> attribute "alias")

parseEnum :: Parser Enum
parseEnum =
  element "enum" $
    Enum
      <$> optional parseEnumFlavor
      <*> attribute "name"
      <*> attributes

parseUnused :: Parser Unused
parseUnused = do
  element "unused" $
    Unused
      <$> (Integer <$> attribute "start")
      <*> attributes

parseEnumsElement :: Parser EnumsElement
parseEnumsElement =
      do EnumsProper <$> parseEnum
  <|> do EnumsUnused <$> parseUnused
  <|> do element "comment" $
           EnumsComment <$> string

parseEnums :: Parser Enums
parseEnums =
  element "enums" $ do
    Enums
      <$> attributes
      <*> manyUntil parseEnumsElement endOfContents



parseProto :: Parser Proto
parseProto =
  element "proto" $ do
    mixed <- someUntil parseMixed endOfContents
    unless (any (hasTag "name") mixed) $
      fail "No \"name\" tag in the mix"
    return $ Proto mixed

parseParam :: Parser Param
parseParam =
  element "param" $ do
    Param
      <$> attributes
      <*> someUntil parseMixed endOfContents

parseAlias :: Parser Alias
parseAlias = element "alias" $ Alias <$> attribute "name"

parseDescription :: Parser Description
parseDescription = element "description" $ Description <$> string

parseImplicitExternSyncParams :: Parser ImplicitExternSyncParams
parseImplicitExternSyncParams =
  element "implicitexternsyncparams" $
    ImplicitExternSyncParams <$> do
      many $
        element "param" $ string




parseCommand :: Parser Command
parseCommand =
  element "command" $
        do CommandAlias
             <$> attribute "name"
             <*> attribute "alias"
             <*> attributes
    <|> do CommandProper
             <$> attributes
             <*> parseProto
             <*> manyUntil parseParam ( void parseAlias
                                    <|> void parseDescription
                                    <|> void parseImplicitExternSyncParams
                                    <|> endOfContents
                                      )
             <*> mayUntil parseAlias ( void parseDescription
                                   <|> void parseImplicitExternSyncParams
                                   <|> endOfContents
                                     )
             <*> mayUntil parseDescription ( void parseImplicitExternSyncParams
                                         <|> endOfContents
                                           )
             <*> mayUntil parseImplicitExternSyncParams endOfContents

parseCommands :: Parser Commands
parseCommands =
  element "commands" $
    Commands
      <$> optional (attribute "comment")
      <*> manyUntil parseCommand endOfContents



parseInterfaceElement :: Parser InterfaceElement
parseInterfaceElement =
      do element "type" $
           InterfaceType
             <$> attribute "name"
             <*> optional (attribute "comment")
  <|> do InterfaceEnum
           <$> parseEnum
  <|> do element "command" $
           InterfaceCommand
             <$> attribute "name"
             <*> optional (attribute "comment")

parseFeatureInterface :: Parser FeatureInterface
parseFeatureInterface =
      do FeatureInterface <$> parseInterfaceElement
  <|> do element "comment" $ FeatureComment <$> string

parseFeatureElement :: Parser FeatureElement
parseFeatureElement =
      do element "require" $
           FeatureRequire
             <$> attributes
             <*> manyUntil parseFeatureInterface endOfContents
  <|> do element "remove" $
           FeatureRemove
             <$> attributes
             <*> manyUntil parseFeatureInterface endOfContents

parseFeature :: Parser Feature
parseFeature =
  element "feature" $
    Feature
      <$> attribute "api"
      <*> attribute "name"
      <*> (XsdFloat <$> attribute "number")
      <*> attributes
      <*> manyUntil parseFeatureElement endOfContents



parseExtensionInterface :: Parser ExtensionInterface
parseExtensionInterface =
         ExtensionInterface <$> parseInterfaceElement
  <|> do ExtensionComment <$> element "comment" string

parseExtensionElement :: Parser ExtensionElement
parseExtensionElement =
      do element "require" $
           ExtensionRequire
             <$> attributes
             <*> manyUntil parseExtensionInterface endOfContents
  <|> do element "remove" $
           ExtensionRemove
             <$> attributes
             <*> manyUntil parseExtensionInterface endOfContents

parseExtension :: Parser Extension
parseExtension =
  element "extension" $
    Extension
      <$> attribute "name"
      <*> attributes
      <*> manyUntil parseExtensionElement endOfContents

parseExtensions :: Parser Extensions
parseExtensions =
  element "extensions" $
    Extensions
      <$> optional (attribute "comment")
      <*> manyUntil parseExtension endOfContents



parseComponent :: Parser Component
parseComponent =
  element "component" $
    Component
      <$> attribute "name"
      <*> attribute "bits"
      <*> attribute "numericFormat"
      <*> optional (attribute "planeIndex")

parsePlane :: Parser Plane
parsePlane =
  element "plane" $
    Plane
      <$> attribute "index"
      <*> attribute "widthDivisor"
      <*> attribute "heightDivisor"
      <*> attribute "compatible"

parseSpirvImageFormat :: Parser SpirvImageFormat
parseSpirvImageFormat =
  element "spirvimageformat" $
    SpirvImageFormat
      <$> attribute "name"

parseFormat :: Parser Format
parseFormat =
  element "format" $
    Format
      <$> attribute "name"
      <*> attribute "class"
      <*> attribute "blockSize"
      <*> attribute "texelsPerBlock"
      <*> attributes
      <*> someUntil parseComponent ( void parsePlane
                                 <|> void parseSpirvImageFormat
                                 <|> endOfContents
                                   )
      <*> manyUntil parsePlane (void parseSpirvImageFormat <|> endOfContents)
      <*> manyUntil parseSpirvImageFormat endOfContents

parseFormats :: Parser Formats
parseFormats =
  element "formats" $
    Formats <$> manyUntil parseFormat endOfContents



parseEnable :: Parser Enable
parseEnable =
  element "enable" $
           EnableVersion   <$> attribute "version"
    <|> do EnableExtension <$> attribute "extension"
    <|> do EnableFeature
             <$> attribute "struct"
             <*> attribute "feature"
             <*> attribute "requires"
             <*> optional (attribute "alias")
    <|> do EnableProperty
             <$> attribute "property"
             <*> attribute "member"
             <*> attribute "value"
             <*> optional (attribute "requires")

parseSpirvExtension :: Parser SpirvExtension
parseSpirvExtension =
  element "spirvextension" $
    SpirvExtension
      <$> attribute "name"
      <*> someUntil parseEnable endOfContents

parseSpirvExtensions :: Parser SpirvExtensions
parseSpirvExtensions =
  element "spirvextensions" $
    SpirvExtensions
      <$> optional (attribute "comment")
      <*> manyUntil parseSpirvExtension endOfContents

parseSpirvCapability :: Parser SpirvCapability
parseSpirvCapability = do
  element "spirvcapability" $
    SpirvCapability
      <$> attribute "name"
      <*> someUntil parseEnable endOfContents

parseSpirvCapabilities :: Parser SpirvCapabilities
parseSpirvCapabilities =
  element "spirvcapabilities" $
    SpirvCapabilities
      <$> optional (attribute "comment")
      <*> manyUntil parseSpirvCapability endOfContents



parseRegistry :: Parser Registry
parseRegistry = do
  reg <- flip manyUntil endOfContents $ do
                name <- lookAhead $ anyElement pure
                case name of
                  "comment"           -> element "comment" $ RegComment <$> string
                  "platforms"         -> RegPlatforms         <$> parsePlatforms
                  "tags"              -> RegTags              <$> parseTags
                  "types"             -> RegTypes             <$> parseTypes
                  "enums"             -> RegEnums             <$> parseEnums
                  "commands"          -> RegCommands          <$> parseCommands
                  "feature"           -> RegFeature           <$> parseFeature
                  "extensions"        -> RegExtensions        <$> parseExtensions
                  "formats"           -> RegFormats           <$> parseFormats
                  "spirvextensions"   -> RegSpirvExtensions   <$> parseSpirvExtensions
                  "spirvcapabilities" -> RegSpirvCapabilities <$> parseSpirvCapabilities
                  _                   -> fail $ "Invalid element name: " <> name

  return $ Registry reg



purgeWhitespace :: [Content Posn] -> [Content Posn]
purgeWhitespace = foldr purge []
  where
    purgeElem (Elem name attrs cons) = Elem name attrs (purgeWhitespace cons)

    purge a as
      | CString False str _ <- a, all isSpace str = as
      | CElem el posn <- a                        = CElem (purgeElem el) posn : as
      | otherwise                                 = a : as

purgeXmlComments :: [Content Posn] -> [Content Posn]
purgeXmlComments = foldr purge []
  where
    purgeElem (Elem name attrs cons) = Elem name attrs (purgeXmlComments cons)

    purge a as
      | CMisc (Comment _) _ <- a = as
      | CElem el posn <- a       = CElem (purgeElem el) posn : as
      | otherwise                = a : as



parseDoc :: Document Posn -> Either String Registry
parseDoc (Document _ _ (Elem (N "registry") attr inner) _) =
  case runParser parseRegistry attr . purgeXmlComments $ purgeWhitespace inner of
    Right reg -> Right reg
    Left errs ->
      Left $ "Could not parse registry:\n" <>
               foldMap (\(p, e) -> show p <> ": " <> e <> "\n") (NonEmpty.toList errs)

parseDoc _ = Left "Top-level element is not <registry>"
