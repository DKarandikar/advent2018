module Utils where

import Data.Char

sort :: (a -> a -> Bool) -> [a] -> [a]
sort _ [] = []
sort f (x:xs) =
    let smaller = sort f (filter (f x) xs)
        bigger  = sort f (filter (not . f x) xs)
    in smaller ++ [x] ++ bigger


getSubString :: Char -> Char -> String -> String
getSubString c c' s = consume c c' s 

consume:: Char -> Char -> String -> String
consume c c' s = let (x:xs) = s in if x == c then consume' "" c' xs else consume c c' xs

consume' :: String -> Char -> String -> String
consume' soFar c s = let (x:xs) = s in if x == c then soFar else consume' (soFar ++ [x]) c xs

flipCase:: Char -> Char
flipCase c = if isUpper c then toLower c else toUpper c

removeChar:: Char -> String -> String
removeChar c [] = []
removeChar c (x : xs) = if (toLower x) == (toLower c) then removeChar c xs   else x : (removeChar c xs)

type Coord = (Int, Int)

-- Given a list of coords, get top left and bottom right of all coords
getBoundingBox:: [Coord] -> (Coord, Coord)
getBoundingBox coords = 
    let 
        xs = [fst c | c <- coords]
        ys = [snd c | c <- coords]
    in
        ((minimum xs, minimum ys), (maximum xs, maximum ys))

manhattanDist:: Coord -> Coord -> Int
manhattanDist c c' = abs (fst c - fst c') + abs (snd c - snd c')

getBorder (Coord, Coord) -> [Coord]
