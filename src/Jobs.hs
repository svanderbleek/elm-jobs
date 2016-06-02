{-# LANGUAGE DeriveGeneric #-}

module Jobs (Job(..), Jobs) where

import Data.Aeson
  (ToJSON, FromJSON, fromJSON, toJSON)
import GHC.Generics

import Data.Text
  (Text)

data Job
  = Job
  { title :: Text
  , description :: Text}
  deriving (Generic, Show)

instance ToJSON Job
instance FromJSON Job

type Jobs = [Job]
