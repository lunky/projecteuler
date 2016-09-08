import Test.Hspec
import Test.QuickCheck
import Lib

main :: IO ()
main = hspec $ do
  describe "Lib" $ do 
    describe "generate triangle numbers" $ do 
      it "should generate the first 5 triangle numbers" $ do 
        take 5 triangleNumbers  `shouldBe` [1, 3, 6, 10, 15]

    describe "get the factors of the first 7 triangle numbers" $ do
      it "should generate the factors for 1" $ do 
        factors 1 `shouldBe` []
      it "should generate the factors for 3" $ do 
        factors 3 `shouldBe` [3]
      it "should generate the factors for 6" $ do 
        factors 6 `shouldBe` [2,3]
      it "should generate the factors for 10" $ do 
        factors 10 `shouldBe` [2,5]
      it "should generate the factors for 15" $ do 
        factors 15 `shouldBe` [3,5]
      it "should generate the factors for 21" $ do 
        factors 21 `shouldBe` [3,7]
      it "should generate the factors for 28" $ do 
        factors 28 `shouldBe` [2,2,7]
      it "should generate the factors for 36" $ do 
        factors 36 `shouldBe` [2,2,3,3]

    describe "divisorCount takes an int and gets returns the number of divisors" $ do
      it "should generate the divisorCount for 1" $ do 
        divisorCount 1 `shouldBe` 1
      it "should generate the divisorCount for 3" $ do 
        divisorCount 3 `shouldBe` 2
      it "should generate the divisorCount for 6" $ do 
        divisorCount 6 `shouldBe` 4
      it "should generate the divisorCount for 10" $ do 
        divisorCount 10 `shouldBe` 4
