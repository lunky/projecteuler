module Lib
    ( 
      triangleNumbers, problem12, factors, divisorCount
    ) where

import Data.List
import Debug.Trace

triangleNumbers = scanl1 (\acc x -> x + acc) [1..]

leastDivisor :: Int -> Int
leastDivisor n = ld 2 n
  where 
  ld k n  | (rem n k == 0) = k  -- divides evenly
          | k^2 > n = n         -- stop if greater than square
          | otherwise = ld (k+1) n

factors :: Int -> [Int]
factors n | n < 1 = error "Must be a positive integer"
  | n == 1 = []
  | otherwise = p : factors (div n p) where p = leastDivisor n

divisorCount :: Int -> Int
divisorCount n = product $ map ((+1) . length) (group (factors n))    

problem12 :: Int -> Int
problem12 n = head $ filter ((> n) . divisorCount) triangleNumbers
