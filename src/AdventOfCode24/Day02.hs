module AdventOfCode24.Day02 (day02) where

import AdventOfCode24.Common
import Data.Ix
import Data.List

part1 = count (any safe . \r -> [id, reverse] <*> [r])

count f = length . filter f

safe :: [Int] -> Bool
safe r = all (inRange (1, 3)) $ zipWith (-) r (tail r)

part2 = count (any safe . \r -> [id, reverse] <*> r : dropSingle r)

dropSingle l = zipWith (++) (inits l) (tail $ tails l)

day02 = Day (part1 . readGrid, part2 . readGrid)
