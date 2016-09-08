module Main where

import Lib
import System.Environment

err :: IO ()
err = do
  putStrLn "Usage: problem12-exe <number of divisors>"

  
main :: IO ()
main = do
  args <- getArgs
  case (length args) of
    1 -> print $ problem12 (read ( head args ))
    e -> err
