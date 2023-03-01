{-# LANGUAGE Rank2Types #-}

module Text.XML.Parser
  ( Parser
  , runParser
  , lookAhead
  , optional
  , attribute
  , attributes
  , anyElement
  , element
  , string
  , endOfContents
  ) where

import           Control.Applicative hiding (optional)
import           Data.Foldable
import qualified Data.List as List
import           Data.List.NonEmpty (NonEmpty (..))
import           Data.Map (Map)
import qualified Data.Map as Map
import           Text.XML.HaXml.Posn (Posn, noPos)
import           Text.XML.HaXml.Types



type Failure r = NonEmpty (Posn, String) -> Result r

type Success r a = Posn -> [Attribute] -> [Content Posn] -> a -> Result r

type Result a = Either (NonEmpty (Posn, String)) a

-- | Simple XML parser.
--   
--   Treats all names as global, regardless of the namespace.
--
--   Collects errors on both sides of alternatives.
newtype Parser a =
          Parser
            { unParser
                :: forall r
                 . Posn
                -> [Attribute]
                -> [Content Posn]
                -> Failure r
                -> Success r a
                -> Result r
            }

instance Functor Parser where
  fmap f p = Parser $ \posn attrs cons bad good ->
               unParser p posn attrs cons bad $ \posn' attrs' cons' ->
                 good posn' attrs' cons' . f

instance Applicative Parser where
  pure a = Parser $ \posn attrs cons _ good -> good posn attrs cons a

  g <*> p = Parser $ \posn attrs cons bad good ->
              unParser g posn attrs cons bad $ \posn' attrs' cons' f ->
                unParser p posn' attrs' cons' bad $ \posn'' attrs'' cons'' a ->
                  good posn'' attrs'' cons'' $ f a

instance Monad Parser where
  p >>= m = Parser $ \posn attrs cons bad good ->
              unParser p posn attrs cons bad $ \posn' attrs' cons' a ->
                unParser (m a) posn' attrs' cons' bad good

instance MonadFail Parser where
  fail msg = Parser $ \posn _ _ bad _ -> bad $ pure (posn, msg)

instance Alternative Parser where
  empty = fail "empty"

  c <|> d = Parser $ \posn attrs cons bad good ->
              flip (unParser c posn attrs cons) good $ \es ->
                flip (unParser d posn attrs cons) good $ \es' ->
                  bad $ es <> es'

runParser :: Parser a -> [Attribute] -> [Content Posn] -> Result a
runParser p attrs cons = unParser p noPos attrs cons Left $ \_ _ _ -> Right



disqualify :: QName -> String
disqualify (N name)    = name
disqualify (QN _ name) = name

discontent :: Content i -> i
discontent (CElem _ i)     = i
discontent (CString _ _ i) = i
discontent (CRef _ i)      = i
discontent (CMisc _ i)     = i

contentType :: Content i -> String
contentType (CElem (Elem name _ _) _) = "element named " <> show (disqualify name)
contentType (CString _ _ _)           = "string"
contentType (CRef _ _)                = "reference"
contentType (CMisc _ _)               = "miscellaneous"

dereference :: Reference -> Maybe String
dereference (RefEntity "lt")   = Just "<"
dereference (RefEntity "gt")   = Just ">"
dereference (RefEntity "amp")  = Just "&"
dereference (RefEntity "quot") = Just "\""
dereference (RefEntity "apos") = Just "'"
dereference _                  = Nothing

decompress :: AttValue -> Parser String
decompress (AttValue as) =
  fmap mconcat .
    flip traverse as $ \ei ->
           case ei of
             Left val  -> pure val
             Right ref -> case dereference ref of
                            Just deref -> pure deref
                            Nothing    -> fail $ "Could not dereference " <> show ref



lookAhead :: Parser a -> Parser a
lookAhead f = Parser $ \posn attrs cons bad good ->
               unParser f posn attrs cons bad $ \_ _ _ ->
                 good posn attrs cons

optional :: Parser a -> Parser (Maybe a)
optional p = fmap Just p <|> pure Nothing



attribute :: String -> Parser String
attribute attr =
  Parser $ \posn attrs cons bad good ->
    let (these, rest) = List.partition ((== attr) . disqualify . fst) attrs
    in (\p -> unParser p posn rest cons bad good) $
         case these of
         [(_, attv)] -> decompress attv
         _ : _ : _   -> fail $ "Multiple attributes named " <> show attr
         []          -> fail $ "No attribute named " <> show attr

attributes :: Parser (Map String String)
attributes =
  Parser $ \posn attrs cons bad good ->
    let go ms (name, attv) = do
          decomp <- decompress attv
          return $ Map.insert (disqualify name) decomp ms

    in (\p -> unParser p posn [] cons bad good) $
         foldlM go Map.empty attrs

anyElement :: (String -> Parser a) -> Parser a
anyElement f =
  Parser $ \posn attrs cons bad good ->
    case cons of
      CElem (Elem name attrs' cons') posn' : rest ->
        unParser (f $ disqualify name) posn' attrs' cons' bad $ \_ _ _ ->
          good posn' attrs rest

      other           : _    ->
        bad $ pure (discontent other, "Expected element, found " <> contentType other)

      []                     -> bad $ pure (posn, "Ran out of contents")

element :: String -> Parser a -> Parser a
element name f =
  Parser $ \posn attrs cons bad good ->
    case cons of
      CElem (Elem name' attrs' cons') posn' : rest ->
        if disqualify name' == name
          then unParser f posn' attrs' cons' bad $ \_ _ _ ->
                 good posn' attrs rest

          else bad $ pure (posn', "Expected element named " <> show name
                               <> ", found element named " <> show (disqualify name')
                          )

      other           : _    ->
        bad $ pure (discontent other, "Expected element named " <> show name
                                   <> ", found " <> contentType other
                   )

      []                     -> bad $ pure (posn, "Ran out of contents")

string :: Parser String
string =
  Parser $ \posn attrs cons bad good ->
    case cons of
      []  -> bad $ pure (posn, "Ran out of contents")
      c:_ ->
        let (consumed, rest) = consume flatten cons
        in case consumed of
             [] -> bad $ pure (discontent c, "Expected string, found " <> contentType c)
             _  -> good posn attrs rest $ mconcat consumed
  where
    consume f as | a:rs <- as, Just b <- f a = let (bs, cs) = consume f rs
                                               in (b:bs, cs)
                 | otherwise = ([], as)

    flatten c =
      case c of
        CString _ str _ -> Just str
        CRef ref      _ -> dereference ref
        _               -> Nothing



endOfContents :: Parser ()
endOfContents =
  Parser $ \posn attrs cons bad good ->
    case cons of
      []        -> good posn attrs cons ()
      other : _ -> bad $ pure (discontent other, "Expected end of contents")
