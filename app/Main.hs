module Main (main) where

import AdventOfCode24
import Control.Monad
import Data.Ix
import System.Environment

main = do
  args <- getArgs
  unless (inRange (2, 2) (length args)) $ error "2 arguments required"
  let [day, part] = map read args
  unless (inRange (1, 25) day) $ error ("invalid day: " ++ show day)
  unless (inRange (1, 2) part) $ error ("invalid part: " ++ show part)
  input <- getContents
  let process = case part of { 1 -> fst; 2 -> snd } . parts $ days !! (day - 1)
  print (process input)
