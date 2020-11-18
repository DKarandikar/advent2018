module Main where

import Day1 (d1_1, d1_2)
import Day2 (d2_1, d2_2)


main :: IO ()
main = do
    day <- getLine  
    case day of 
        "1-1" -> do
            contents <- readFile "src/input_files/day1"
            return putStrLn putStrLn $ d1_1 contents
        "1-2" -> do
            contents <- readFile "src/input_files/day1"
            return putStrLn putStrLn $ d1_2 contents
        "2-1" -> do
            contents <- readFile "src/input_files/day2"
            return putStrLn putStrLn $ d2_1 contents
        "2-2" -> do
            contents <- readFile "src/input_files/day2"
            return putStrLn putStrLn $ d2_2 contents
        _  -> error $ "Invalid day: " ++ day