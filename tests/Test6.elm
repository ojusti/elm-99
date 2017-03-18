module Test6 exposing (..)

import Test exposing (..)
import Expect
import Src6


suite : Test
suite = 
    describe "Problem 6"
        [ [ 1, 3, 5, 8, 5, 3, 1 ] |> isPalindrome
        , [ 2, 1 ] |> isNotPalindrome
        , [ 1 ] |> isPalindrome
        , [] |> isPalindrome
        , [ "aa", "bb", "aa" ] |> isPalindrome
        , [ "aab", "b", "aa" ] |> isNotPalindrome
        ]

isPalindrome : List a -> Test
isPalindrome list =
    test (toString list) <|
        \() -> 
            Expect.true "should be palindrome" (Src6.isPalindrome list)

isNotPalindrome : List a -> Test
isNotPalindrome list =
    test (toString list) <|
        \() -> 
            Expect.false "should not be palindrome" (Src6.isPalindrome list)
            