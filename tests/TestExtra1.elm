module TestExtra1 exposing (..)

import Test exposing (..)
import Expect
import SrcExtra1


suite : Test
suite =
    describe "Problem Extra 1"
        [ dropWhile isOdd [ 1, 2, 1 ] <|
            [ 2, 1 ]
        , dropWhile isEven [ 1, 2, 1 ] <|
            [ 1, 2, 1 ]
        , dropWhile isEven [] <|
            []
        , dropWhile isEven [ 2, 4, 100000, 1 ] <|
            [ 1 ]
        , dropWhile (\x -> x < 5) (List.range 1 10) <|
            [ 5, 6, 7, 8, 9, 10 ]
        ]


isEven : Int -> Bool
isEven x =
    x % 2 == 0


isOdd : Int -> Bool
isOdd x =
    x % 2 /= 0


dropWhile : (a -> Bool) -> List a -> List a -> Test
dropWhile predicate list expected =
    test ("dropWhile " ++ toString predicate ++ " " ++ (toString list) ++ " == " ++ (toString expected)) <|
        \() ->
            SrcExtra1.dropWhile predicate list
                |> Expect.equal expected



-- it would be nice to have some kind of reflection and get the name of predicate if it has one
