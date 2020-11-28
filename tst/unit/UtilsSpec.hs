module UtilsSpec where

import Test.Hspec
import Day5
import Utils

spec :: Spec
spec = do
    describe "FlipCase" $ do
        it "flipCase lower" $ do
            flipCase 'c' `shouldBe` ('C')
        it "flipCase upper" $ do
            flipCase 'D' `shouldBe` ('d')
    describe "RemoveChar" $ do
        it "removeChar removes upper" $ do 
            removeChar 'D' "aaDbbdk" `shouldBe` ("aabbk")
        it "removeChar removes lower" $ do 
            removeChar 'd' "aaDbbdk" `shouldBe` ("aabbk")
    describe "BoundingBox" $ do
        it "handles simple example" $ do 
            getBoundingBox [(1,4), (4,1)] `shouldBe` (((1,1), (4,4)))
    describe "manhattanDist" $ do
        it "handles simple example" $ do 
            manhattanDist (1,4) (4,1) `shouldBe` (6)
        it "handles simple negative example" $ do 
            manhattanDist (1,-4) (4,1) `shouldBe` (8)
    describe "getBorder" $ do
        it "handles simple example" $ do 
            getBorder (1,1) (2,2) `shouldBe` ([(0,0), (1,0), (2,0), (3,0), (0,1), (3,1), (0,2), (3,2), (0,3), (1,3), (2,3), (3,3)])