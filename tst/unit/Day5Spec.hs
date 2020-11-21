module Day5Spec where

import Test.Hspec
import Day5
import Utils

spec :: Spec
spec = do
  describe "Day5" $ do
    it "do_d5_1 handles simple example" $ do
      do_d5_1 "" "dabAcCaCBAcCcaDA" `shouldBe` ("dabCBAcaDA")
    it "flipCase lower" $ do
      flipCase 'c' `shouldBe` ('C')
    it "flipCase upper" $ do
      flipCase 'D' `shouldBe` ('d')