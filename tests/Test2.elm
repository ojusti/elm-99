module Test2 exposing (..)

import Test exposing (..)
import Expect
import Src2


suite : Test
suite =
    describe "Problem 2"
        [ penultimate [1, 2, 3, 4] <| 
            Just 3
        , penultimate [ 1, 2 ] <| 
            Just 1
        , penultimate [ 1 ] <| 
            Nothing
        , penultimate [] <| 
            Nothing
        , penultimate [ "a", "b", "c" ] <| 
            Just "b"
        , penultimate [ "a" ] <| 
            Nothing
        ]

penultimate : List a -> Maybe a -> Test
penultimate list expected =
    test ("penultimate " ++ (toString list) ++ " == " ++ (toString expected)) <|
        \() ->
            Src2.penultimate list
                |> Expect.equal expected