{-# LANGUAGE Rank2Types #-}

module Autogen.Distillery.Condenser
  ( Condenser
  , runCondenser
  , Autogen.Distillery.Condenser.option
  , Autogen.Distillery.Condenser.optional
  , raw
  , tagged
  , end

  , runReadS
  ) where

import           Autogen.Parser.Types (Mixed (..))

import           Control.Applicative
import           Data.List.NonEmpty (NonEmpty (..))
import qualified Data.List.NonEmpty as NonEmpty
import           Text.ParserCombinators.ReadP



type Failure r = [Mixed] -> NonEmpty String -> Result r

type Success r a = [Mixed] -> a -> Result r

type Result a = Either ([Mixed], NonEmpty String) a

-- | Parser for Vulkan's tagged C stored in @mixed@ sections.
--
--   Collects errors on both sides of alternatives.
newtype Condenser a =
          Condenser
            { unCondenser
                :: forall r
                 . [Mixed]
                -> Failure r
                -> Success r a
                -> Result r
            }

instance Functor Condenser where
  fmap f c = Condenser $ \mixed bad good ->
               unCondenser c mixed bad $ \mixed' ->
                 good mixed' . f

instance Applicative Condenser where
  pure a = Condenser $ \mixed _ good -> good mixed a

  g <*> c = Condenser $ \mixed bad good ->
              unCondenser g mixed bad $ \mixed' f ->
                unCondenser c mixed' bad $ \mixed'' a ->
                  good mixed'' $ f a

instance Monad Condenser where
  c >>= m = Condenser $ \mixed bad good ->
              unCondenser c mixed bad $ \mixed' a ->
                unCondenser (m a) mixed' bad good

instance MonadFail Condenser where
  fail msg = Condenser $ \mixed bad _ -> bad mixed $ msg :| []

instance Alternative Condenser where
  empty = fail "empty"

  c <|> d = Condenser $ \mixed bad good ->
              flip (unCondenser c mixed) good $ \_ es ->
                flip (unCondenser d mixed) good $ \_ es' ->
                  bad mixed $ es <> es'

runCondenser :: Condenser a -> NonEmpty Mixed -> Result a
runCondenser c mixed = unCondenser c (NonEmpty.toList mixed) (curry Left) $ \_ -> Right



option :: a -> Condenser a -> Condenser a
option def c = c <|> pure def

optional :: Condenser a -> Condenser (Maybe a)
optional c = fmap Just c <|> pure Nothing



runReadS :: ReadS a -> String -> Maybe a
runReadS r s = foldr go Nothing $ r s
  where
    go (a, "") = \_ -> Just a
    go _       = id


raw :: ReadP a -> Condenser a
raw r =
  Condenser $ \mixed bad good ->
    case mixed of
      []                -> bad mixed $ "Ran out of contents" :| []
      Tagged _ _ : _    -> bad mixed $ "Expected raw, found tagged" :| []
      Raw str    : rest ->
        case runReadS (readP_to_S r) str of
          Just a  -> good rest a
          Nothing -> bad mixed $ "No parse" :| []

tagged :: String -> ReadP a -> Condenser a
tagged tag r =
  Condenser $ \mixed bad good ->
    case mixed of
      []                     -> bad mixed $ "Ran out of contents" :| []
      Raw _           : _    ->
        bad mixed $ ("Expected tagged named " <> show tag <> ", found raw") :| []

      Tagged tag' str : rest ->
        if tag /= tag'
          then bad mixed $ ( "Expected tagged named " <> show tag
                           <> ", found tagged named " <> show tag' ) :| []

          else case runReadS (readP_to_S r) str of
                 Just a  -> good rest a
                 Nothing -> bad mixed $ "No parse" :| []

end :: Condenser ()
end =
  Condenser $ \mixed bad good ->
    case mixed of
      []  -> good mixed ()
      _:_ -> bad mixed $ "Expected end of contents" :| []
