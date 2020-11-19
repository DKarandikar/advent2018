module Day3 (d3_1, d3_2, handleLine) where 

import qualified Data.Map as Map

d3_1:: String -> String
d3_1 i = i

handleLine:: String -> [(Int, Int)]
handleLine s = 
    let 
        ws = words s
        topLeft = map (\s -> read s :: Int) (wordsWhen (==',') (removeColon $ ws!!2))
        size = map (\s -> read s :: Int) (wordsWhen (=='x') (ws!!3))
    in
        [(topLeft!!0 + x, topLeft!!1 + y) | x <- [0..(size!!0 - 1)], y <- [0..(size!!1 - 1)]]

removeColon xs = [ x | x <- xs, not (x == ':') ]

wordsWhen:: (Char -> Bool) -> String -> [String]
wordsWhen p s =  case dropWhile p s of
                      "" -> []
                      s' -> w : wordsWhen p s''
                            where (w, s'') = break p s'

d3_2:: String -> String
d3_2 i = i