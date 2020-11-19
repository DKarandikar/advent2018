module Day3Spec where

import qualified Data.Map as Map
import Test.Hspec
import Day3(handleLine, d3_1)

spec :: Spec
spec = do
  describe "Day3" $ do
    it "handleLine returns a list of coords" $ do
      handleLine "#1 @ 1,1: 2x2" `shouldBe` ([(1,1), (1,2), (2,1), (2,2)])
    it "d3_1 handles simple example" $ do
        d3_1 "#1 @ 1,3: 4x4\n#2 @ 3,1: 4x4\n#3 @ 5,5: 2x2" `shouldBe` "4"
