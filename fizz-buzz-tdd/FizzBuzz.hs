module FizzBuzz where

fizzBuzz :: Int -> String
fizzBuzz number
    | isMultipleOfTwoValues number 3 5 = "fizz buzz"
    | isMultipleOf number 3 = "fizz" 
    | isMultipleOf number 5 = "buzz"
    | otherwise = show number

isMultipleOf x y = x `mod` y == 0 
isMultipleOfTwoValues n x y = isMultipleOf n x && isMultipleOf n y