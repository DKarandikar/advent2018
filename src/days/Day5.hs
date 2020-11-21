module Day5 where 

import Utils(flipCase)


d5_1:: String -> String
d5_1 i = show $ get_reacted_polymer_length i

get_reacted_polymer_length :: String -> Int
get_reacted_polymer_length = length . do_d5_1 ""

do_d5_1:: String -> String -> String
do_d5_1 s [] = s
do_d5_1 s [c] = s ++ [c]
do_d5_1 [] (c:c':cs)
    | c == flipCase c' = do_d5_1 "" cs
    | otherwise = do_d5_1 [c] (c':cs)
do_d5_1 s (c:c':cs)
    | c == flipCase c' = do_d5_1 (init s) (last s : cs)
    | otherwise = do_d5_1 (s ++ [c]) (c':cs)

d5_2:: String -> String
d5_2 i = i
