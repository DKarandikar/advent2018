module Main where

import Day1 (d1_1, d1_2)
import Day2 (d2_1, d2_2)
import Day3 (d3_1, d3_2)
import Day4 (d4_1, d4_2)
import Day5 (d5_1, d5_2)
import Day6 (d6_1, d6_2)
import System.Environment


main :: IO ()
main = do
    args <- getArgs  
    case args of 
        "1-1" : [] -> do
            contents <- readFile "src/input_files/day1"
            return putStrLn putStrLn $ d1_1 contents
        "1-2" : [] -> do
            contents <- readFile "src/input_files/day1"
            return putStrLn putStrLn $ d1_2 contents
        "2-1" : [] -> do
            contents <- readFile "src/input_files/day2"
            return putStrLn putStrLn $ d2_1 contents
        "2-2" : [] -> do
            contents <- readFile "src/input_files/day2"
            return putStrLn putStrLn $ d2_2 contents
        "3-1" : [] -> do
            contents <- readFile "src/input_files/day3"
            return putStrLn putStrLn $ d3_1 contents
        "3-2" : [] -> do
            contents <- readFile "src/input_files/day3"
            return putStrLn putStrLn $ d3_2 contents
        "4-1" : [] -> do
            contents <- readFile "src/input_files/day4"
            return putStrLn putStrLn $ d4_1 contents
        "4-2" : [] -> do
            contents <- readFile "src/input_files/day4"
            return putStrLn putStrLn $ d4_2 contents
        "5-1" : [] -> do
            contents <- readFile "src/input_files/day5"
            return putStrLn putStrLn $ d5_1 contents
        "5-2" : [] -> do
            contents <- readFile "src/input_files/day5"
            return putStrLn putStrLn $ d5_2 contents
        "6-1" : [] -> do
            contents <- readFile "src/input_files/day6"
            return putStrLn putStrLn $ d6_1 contents
        "6-2" : [] -> do
            contents <- readFile "src/input_files/day6"
            return putStrLn putStrLn $ d6_2 contents
        _  -> error "Must be called with an argument of the form [1-25]-[1-2]"