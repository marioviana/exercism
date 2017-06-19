module Bob (responseFor) where
import Data.Char

responseFor :: String -> String
responseFor xs
      | isNothing xs = "Fine. Be that way!"
      | isShouting xs = "Whoa, chill out!"
      | isQuestion xs = "Sure."
      | otherwise = "Whatever."

isNothing :: String -> Bool
isNothing xs = all isSpace xs

isShouting :: String -> Bool
isShouting xs = any isUpper xs && not (any isLower xs)

isQuestion :: String -> Bool
isQuestion xs = last x == '?'
      where x = trim xs

trim :: String -> String
trim = f . f
      where f = reverse . dropWhile isSpace
