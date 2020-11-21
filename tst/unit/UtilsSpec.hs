module UtilsSpec where

import Test.Hspec
import Day5
import Utils

spec :: Spec
spec = do
    it "flipCase lower" $ do
      flipCase 'c' `shouldBe` ('C')
    it "flipCase upper" $ do
      flipCase 'D' `shouldBe` ('d')
    it "removeChar removes upper" $ do 
      removeChar 'D' "aaDbbdk" `shouldBe` ("aabbk")
    it "removeChar removes lower" $ do 
      removeChar 'd' "aaDbbdk" `shouldBe` ("aabbk")