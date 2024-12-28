module AdventOfCode24.Common (Day (..), listUncurry, Part, readGrid) where

newtype Day = Day {parts :: (Part, Part)}

type Part = String -> Int

listUncurry :: (a -> a -> b) -> [a] -> b
listUncurry f [x, y] = f x y

readGrid :: Read a => String -> [[a]]
readGrid = map (map read . words) . lines
