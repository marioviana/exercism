module Pangram (isPangram) where

import Data.Char (toLower)

isPangram :: String -> Bool
isPangram = flip all ['a'..'z'] . flip elem . map toLower

{--
import Data.Char (toLower)
import Data.Set (fromList, isSubsetOf)

isPangram :: String -> Bool
isPangram text = isSubsetOf alphabet (lowerSet text)
  where
    lowerSet = fromList . map toLower
    alphabet = fromList "abcdefghijklmnopqrstuvwxyz"
--}

{--
import Data.Char (isAlpha, toLower)
import Data.List (sort, nub)

isPangram :: String -> String
isPangram =  ((==) ['a'..'z']) . sort . nub . map toLower
--}
