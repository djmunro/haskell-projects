import Test.Hspec
import Text.Printf (printf)

convertToRomanNumeral x = "IV"

testConvertToRomanNumeral :: Int -> String -> Spec
testConvertToRomanNumeral number romanNumeral =
  it (printf "should return the roman numeral equivelant for the number : %d → %s \n" number romanNumeral) $
    convertToRomanNumeral number `shouldBe` romanNumeral

main = hspec $ do
  describe "convertToRomanNumeral" $ do 
    testConvertToRomanNumeral 1 "I"
    testConvertToRomanNumeral 10 "X"
    testConvertToRomanNumeral 7 "VII"
