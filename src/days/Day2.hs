module Day2 (d2_1, d2_2) where 

import qualified Data.Map as Map
import qualified Data.List as List

d2_1:: String -> String
d2_1 i = show $ (\(x,y) -> x*y) $ foldl sumLine (0, 0) $ lines i

sumLine:: (Int, Int) -> String -> (Int, Int)
sumLine (x, y) line = let (a, b) = handleLine line in (x+a, y+b)

handleLine:: String -> (Int, Int)
handleLine s = 
    let x = getCharMap s in 
        (if Map.null (Map.filter (2==) x) then 0 else 1, if Map.null (Map.filter (3==) x) then 0 else 1 )

getCharMap :: String -> Map.Map Char Int
getCharMap s = Map.fromListWith (+) [(c, 1) | c <- s]

hammingDistance :: Eq a => [a] -> [a] -> Int
hammingDistance = (sum .) . zipWith ((fromEnum .) . (/=))

d2_2:: String -> String
d2_2 i = case List.find (\(x,y) -> hammingDistance x y == 1) [(x,y) | x <- lines i, y <- lines i] of
    Just (x, y) -> filter (\a -> elem a x) y
    Nothing -> "No result"