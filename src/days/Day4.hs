module Day4 where 

import qualified Data.Map as Map
import Data.Time
import Utils(sort, getSubString, consume, consume')
import Control.Monad.State

data GuardTransition = Begin | Wake | Sleep deriving (Show, Eq)

handleLine:: String -> (UTCTime, String, GuardTransition)
handleLine s = 
    let 
        time = timeFromString (getSubString '[' ']' s)
        
        action = case last $ words s of 
            "shift" -> Begin
            "up" -> Wake
            "asleep" -> Sleep
    in 
        if action == Begin then (time, getSubString '#' ' ' s, action) else (time, "", action)

d4_1:: String -> String
d4_1 i = show $ map handleLine (sort compareTimeStrings (lines i))

d4_2:: String -> String
d4_2 i = i

compareTimeStrings:: String -> String -> Bool
compareTimeStrings x y = timeFromString (getSubString '[' ']' x) > timeFromString (getSubString '[' ']' y)

timeFromString s = parseTimeOrError True defaultTimeLocale "%Y-%m-%d %H:%M" s :: UTCTime
-- "1518-08-21 00:39"