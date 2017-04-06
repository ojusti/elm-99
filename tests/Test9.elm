module Test9 exposing (..)

import Test exposing (..)
import Expect
import Src9


suite : Test
suite =
    describe "Problem 9"
        [ pack [ 1, 1, 1, 1, 2, 5, 5, 2, 1 ] <|
            [ [ 1, 1, 1, 1 ], [ 2 ], [ 5, 5 ], [ 2 ], [ 1 ] ]
        , pack [ 2, 1, 1, 1 ] <|
            [ [ 2 ], [ 1, 1, 1 ] ]
        , pack [ 2, 2, 2, 1, 1, 1 ] <|
            [ [ 2, 2, 2 ], [ 1, 1, 1 ] ]
        , pack [ 1 ] <|
            [ [ 1 ] ]
        , pack [] <|
            []
        , pack [ "aa", "aa", "aa" ] <|
            [ [ "aa", "aa", "aa" ] ]
        , pack [ "aab", "b", "b", "aa" ] <|
            [ [ "aab" ], [ "b", "b" ], [ "aa" ] ]
        ]

pack : List a -> List (List a) -> Test
pack list expected =
    test ("pack " ++ (toString list) ++ " == " ++ (toString expected)) <|
        \() ->
            Src9.pack list
                |> Expect.equal expected