module Lib
    ( 
	 triangleNumbers, runner
    ) where

import Data.List

triangleNumbers = scanl1 (\acc x -> x + acc) 

divisors n = [x | x <- [1..(n-1)], n `rem` x == 0]

dcount n = (n, length $ divisors n )

runner :: IO ()
--runner = putStrLn triangleNumbers [1..20]
runner = print $ find (\x -> snd x == 220) $ map dcount $ triangleNumbers [1..] 
