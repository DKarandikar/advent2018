module Day3Spec where

import qualified Data.Map as Map
import Test.Hspec
import Day3(handleLine)

spec :: Spec
spec = do
  describe "Day3" $ do
    it "handleLine retuns a map" $ do
      handleLine "#1 @ 1,1: 2x2" `shouldBe` ([(1,1), (1,2), (2,1), (2,2)])
      