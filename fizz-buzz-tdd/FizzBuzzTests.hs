module FizzBuzzTests where

import FizzBuzz

import Test.Hspec
import Text.Printf (printf)
  
  
testFizzBuzz :: Int -> String -> Spec
testFizzBuzz number fizzBuzzEquivelant =
  it (printf "should return the fizzbuzz equivelant for the number : %d → %s \n" number fizzBuzzEquivelant) $
    fizzBuzz number `shouldBe` fizzBuzzEquivelant

main = hspec $ do
  describe "fizzBuzz" $ do 
    testFizzBuzz 1 "1"
    testFizzBuzz 3 "fizz"
    testFizzBuzz 5 "buzz"
    testFizzBuzz 15 "fizz buzz"
  