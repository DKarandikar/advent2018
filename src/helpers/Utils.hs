module Utils where

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















-- references = length . consume

-- consume []       = []
-- consume ('[':xs) = let (v,rest) = consume' xs in v:consume rest
-- consume (_  :xs) = consume xs

-- consume' []       = ([], []) 
-- consume' (']':xs) = ([], xs)
-- consume' (x  :xs) = let (v,rest) = consume' xs in (x:v, rest)