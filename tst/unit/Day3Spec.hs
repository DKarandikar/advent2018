module Day3Spec where

import qualified Data.Map as Map
import Test.Hspec
import Day3(handleLine, d3_1, d3_2)

spec :: Spec
spec = do
  describe "Day3" $ do
    it "handleLine returns a list of coords" $ do
      handleLine "#1 @ 1,1: 2x2" `shouldBe` ([(1,1), (1,2), (2,1), (2,2)])
    it "d3_1 handles simple example" $ do
        d3_1 "#1 @ 1,3: 4x4\n#2 @ 3,1: 4x4\n#3 @ 5,5: 2x2" `shouldBe` "4"
    it "d3_2 handles simple example" $ do
        d3_2 "#1 @ 1,3: 4x4\n#2 @ 3,1: 4x4\n#3 @ 5,5: 2x2" `shouldBe` "#3"

-- c.f. https://adventofcode.com/2018/day/3

-- #1 @ 1,3: 4x4
-- #2 @ 3,1: 4x4
-- #3 @ 5,5: 2x2
-- Visually, these claim the following areas:

-- ........
-- ...2222.
-- ...2222.
-- .11XX22.
-- .11XX22.
-- .111133.
-- .111133.
-- ........

-- The four square inches marked with X are claimed by both 1 and 2

-- Thus, there are 4 overlapping areas, and #3 is the only non-overlapping claim