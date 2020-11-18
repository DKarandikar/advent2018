module Main where

import Day1 (part1, part2)

main :: IO ()
main = do
    contents <- readFile "src/input_files/day1"
    putStrLn $ part1 contents
    putStrLn $ part2 contents
