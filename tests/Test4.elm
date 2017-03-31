module Test4 exposing (..)

import Test exposing (..)
import Expect
import Src4


suite : Test
suite =
    describe "Problem 4"
        [ countElements (List.range 1 14) <|
            14
        , countElements [ 1 ] <|
            1
        , countElements [] <|
            0
        , countElements [ 'a', 'b', 'c' ] <|
            3
        ]


countElements : List a -> Int -> Test
countElements list expected =
    test ("countElements " ++ (toString list) ++ " == " ++ (toString expected)) <|
        \() ->
            Src4.countElements list
                |> Expect.equal expected
