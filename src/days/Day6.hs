module Day6 where 

import Utils(getBoundingBox)


d6_1:: String -> String
d6_1 i = show $ getBoundingBox [strToCoord x | x <- lines i]

d6_2:: String -> String
d6_2 i = i

strToCoord s = (read (init ((words s)!!0)) :: Int, read ((words s)!!1) :: Int)