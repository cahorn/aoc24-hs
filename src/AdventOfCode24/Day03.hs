{-# LANGUAGE LambdaCase #-}

module AdventOfCode24.Day03 (day03) where

import AdventOfCode24.Common
import Control.Exception hiding (try)
import Data.Functor
import Text.Parsec
import Text.Parsec.String
import Text.Regex.TDFA

data Inst = Do Bool | Mul Int Int deriving (Show)

part1 = sum . map (\case (Mul x y) -> x * y; _ -> 0)

part2 =
  let step (acc, _) (Do bool) = (acc, bool)
      step (acc, enabled) i = (if enabled then i : acc else acc, enabled)
   in part1 . fst . foldl step ([], True)

day03 = Day (part1 . parseInsts, part2 . parseInsts)

parseInsts = map (parseStr inst) . getInsts

parseStr :: Parser a -> String -> a
parseStr p = either throw id . parse p ""

inst = do
  op <- try (string "don't") <|> string "do" <|> string "mul"
  char '('
  args <- sepBy int (char ',')
  char ')'
  return $ case op of
    "do" -> Do True
    "don't" -> Do False
    "mul" -> listUncurry Mul args

int = many1 digit <&> read

getInsts = getAllTextMatches . (=~ "(do|don't|mul)\\(([0-9]+,[0-9]+)?\\)")
