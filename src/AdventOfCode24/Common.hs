module AdventOfCode24.Common (Day (..), Part) where

newtype Day = Day {parts :: (Part, Part)}

type Part = String -> Int
