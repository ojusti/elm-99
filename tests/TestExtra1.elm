module TestExtra1 exposing (..)

import Test exposing (..)
import Expect
import SrcExtra1 exposing (..)


suite : Test
suite = 
    describe "Problem Extra 1"
        [ dropWhileAndCompare isOdd [1, 2, 1] 
            <| [2, 1]
        , dropWhileAndCompare isEven [1, 2, 1] 
            <| [1, 2, 1]
        , dropWhileAndCompare isEven [] 
            <| []
        , dropWhileAndCompare isEven [2, 4, 100000, 1] 
            <| [1]
        , dropWhileAndCompare (\x -> x < 5 ) (List.range 1 10) 
            <| [5, 6, 7, 8, 9, 10]
        ]

isEven : Int -> Bool
isEven x = 
    x % 2 == 0

isOdd : Int -> Bool
isOdd x = 
    x % 2 /= 0


dropWhileAndCompare : (a -> Bool) -> List a -> List a -> Test
dropWhileAndCompare predicate xs ys =
    test (toString "dropWhile " ++ toString predicate ++ " " ++ (toString xs) ++ " == " ++ (toString ys)) <|
        \() -> 
            dropWhile predicate xs 
            |> Expect.equal ys
-- it would be nice to have some kind of reflection and get the name of predicate if it has one
