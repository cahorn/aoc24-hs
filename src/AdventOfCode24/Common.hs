module AdventOfCode24.Common (Day (..), Part, readGrid) where

newtype Day = Day {parts :: (Part, Part)}

type Part = String -> Int

readGrid :: Read a => String -> [[a]]
readGrid = map (map read . words) . lines
