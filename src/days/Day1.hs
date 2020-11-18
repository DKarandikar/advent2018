module Day1 (part1, part2) where 

part1:: String -> String
part1 i = show $ foldl sumLine 0 $ lines i

sumLine:: Int -> String -> Int
sumLine num line = num + handleLine line

handleLine:: String -> Int
handleLine (c:cs) 
    | c == '+' = read cs :: Int
    | c == '-' = (0 - (read cs :: Int))
    | otherwise = error $ "Invalid input: " ++ c:cs


-- part2 i = show $ listStartInList [20,30,21,28,25,32,16,2,10,13,0]
-- part2 i = show $ iterate (accumulateLines (lines i)) [0] !! 100000
-- part2 i = show $ accumulateLines (lines i) [0]

part2:: String -> String
part2 i = show $ head $ until listStartInList (accumulateLines $ lines i) [0]

listStartInList :: [Int] -> Bool
listStartInList (c:cs) = elem c cs

accumulateLines :: [String] -> [Int] -> [Int]
accumulateLines lines l = (head l) + handleLine (lines!!((length l - 1) `mod` (length lines))) : l