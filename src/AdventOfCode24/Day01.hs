module AdventOfCode24.Day01 (day01) where

import AdventOfCode24.Common
import Data.List

part1 = sum . map (abs . listUncurry (-)) . transpose . map sort . transpose

part2 ids =
  let [left, right] = transpose ids
   in sum $ map (\l -> maybe 0 (l *) $ lookup l (occurrences right)) left

occurrences = map (\g -> (head g, length g)) . group . sort

day01 = Day (part1 . readGrid, part2 . readGrid)
