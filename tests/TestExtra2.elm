module TestExtra2 exposing (..)

import Test exposing (..)
import Expect
import SrcExtra2


suite : Test
suite =
    describe "Problem Extra2"
        [ takeWhile isOdd [ 1, 2, 1 ] <|
            [ 1 ]
        , takeWhile isEven [ 1, 2, 1 ] <|
            []
        , takeWhile isEven [] <|
            []
        , takeWhile isEven [ 2, 4, 100000, 1 ] <|
            [ 2, 4, 100000 ]
        , takeWhile (\x -> x < 5) (List.range 1 10) <|
            [ 1, 2, 3, 4 ]
        ]


isEven : Int -> Bool
isEven x =
    x % 2 == 0


isOdd : Int -> Bool
isOdd x =
    x % 2 /= 0


takeWhile : (a -> Bool) -> List a -> List a -> Test
takeWhile predicate list expected =
    test ("takeWhile " ++ (toString predicate) ++ " " ++ (toString list) ++ " == " ++ (toString expected)) <|
        \() ->
            SrcExtra2.takeWhile predicate list
                |> Expect.equal expected
