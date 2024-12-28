import AdventOfCode24
import Data.List
import Test.Tasty
import Test.Tasty.HUnit
import Text.Printf

answers = [(11, 31), (2, 4)]

main = do
  inputs <- mapM (readFile . printf "test/day%02d.txt") [1 .. length answers]
  let tests = concat $ zipWith4 testCases [1 ..] inputs answers days
  defaultMain $ testGroup "Unit tests" tests

testCases day input (ans1, ans2) (Day (part1, part2)) =
  [ testCase (testMsg day 1) $ assertEqual "" ans1 (part1 input),
    testCase (testMsg day 2) $ assertEqual "" ans2 (part2 input)
  ]

testMsg :: Int -> Int -> String
testMsg = printf "Day %d, Part %d"
