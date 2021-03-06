{-# LANGUAGE DeriveGeneric, DeriveAnyClass #-}

module Jason.Core
       (
         JValue (..)
       ) where

import Control.DeepSeq
import Data.Text
import GHC.Generics (Generic)

data JValue = JNull
            | JBool !Bool
            | JNumber !Double
            | JString !Text
            | JArray ![JValue]
            | JObject ![(Text, JValue)]
            deriving (Eq, Ord, Show, Generic, NFData)

