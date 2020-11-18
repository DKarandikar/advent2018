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

part2:: String -> String
part2 i = i