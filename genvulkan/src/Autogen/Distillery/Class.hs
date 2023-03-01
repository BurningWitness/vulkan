{-# LANGUAGE DerivingStrategies
           , GeneralizedNewtypeDeriving
           , Rank2Types #-}

module Autogen.Distillery.Class
  ( Distillery
  , runDistillery
  , context
  , mark
  , condense
  ) where

import           Autogen.Distillery.Condenser
import           Autogen.Parser.Types (Mixed)

import           Control.Applicative
import           Data.List.NonEmpty (NonEmpty (..))



type Failure r = NonEmpty (Maybe String, Maybe String, String) -> Result r

type Success r a = Maybe String -> Maybe String -> a -> Result r

type Result a = Either (NonEmpty (Maybe String, Maybe String, String)) a

-- | Generic validation.
--
--   As there is no underlying parseable stream, stores both an arbitrary
--   context (for representing the object being parsed) and a 'String' mark.
--
--   Collects errors on both sides of alternatives.
newtype Distillery a =
          Distillery
            { unDistillery
                :: forall r
                 . Maybe String -- ^ Arbitrary context
                -> Maybe String -- ^ Mark
                -> Failure r
                -> Success r a
                -> Result r
            }

instance Functor Distillery where
  fmap f d = Distillery $ \con trail bad good ->
               unDistillery d con trail bad $ \con' trail' ->
                 good con' trail' . f

instance Applicative Distillery where
  pure a = Distillery $ \con trail _ good -> good con trail a

  g <*> d = Distillery $ \con trail bad good ->
              unDistillery g con trail bad $ \con' trail' f ->
                unDistillery d con' trail' bad $ \con'' trail'' a ->
                  good con'' trail'' $ f a

instance Monad Distillery where
  d >>= m = Distillery $ \con trail bad good ->
              unDistillery d con trail bad $ \con' trail' a ->
                unDistillery (m a) con' trail' bad good

instance MonadFail Distillery where
  fail msg = Distillery $ \con trail bad _ -> bad $ (con, trail, msg) :| []

instance Alternative Distillery where
  empty = fail "invalid"

  c <|> d = Distillery $ \con trail bad good ->
              flip (unDistillery c con trail) good $ \es ->
                flip (unDistillery d con trail) good $ \es' ->
                  bad $ es <> es'

runDistillery :: Distillery a -> Result a
runDistillery d = 
  unDistillery d Nothing Nothing Left $ \_ _ -> Right

context :: Show a => a -> Distillery ()
context con = Distillery $ \_ trail _ good -> good (Just $ show con) trail ()

mark :: String -> Distillery ()
mark msg = Distillery $ \con _ _ good -> good con (Just msg) ()

condense :: Condenser a -> NonEmpty Mixed -> Distillery a
condense c ms =
  Distillery $ \con trail bad good ->
    case runCondenser c ms of
      Right a           -> good con trail a
      Left (_left, err) -> bad $ pure (con, trail, show err)
