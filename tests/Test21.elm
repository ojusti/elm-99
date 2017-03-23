module Test21 exposing (..)

import Test exposing (..)
import Expect
import Src21


suite : Test
suite =
    describe "Problem 21"
        [ insertAt 2 99 [ 1, 2, 5, 5, 2, 1 ] <|
            [ 1, 99, 2, 5, 5, 2, 1 ]
        , insertAt 3 99 (List.range 1 14) <|
            [ 1, 2, 99, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14 ]
        , insertAt 6 99 (List.range 1 5) <|
            [ 1, 2, 3, 4, 5, 99 ]
        , insertAt 0 99 (List.range 1 5) <|
            [ 99, 1, 2, 3, 4, 5 ]
        , insertAt -1 99 (List.range 1 5) <|
            [ 99, 1, 2, 3, 4, 5 ]
        , insertAt 1 99 (List.range 1 5) <|
            [ 99, 1, 2, 3, 4, 5 ]
        , insertAt 2 "x" [ "1", "2", "3", "4", "5" ] <|
            [ "1", "x", "2", "3", "4", "5" ]
        ]


insertAt : Int -> a -> List a -> List a -> Test
insertAt n v list expected =
    test ("insertAt " ++ (toString n) ++ " " ++ (toString v) ++ " " ++ (toString list) ++ " == " ++ (toString expected)) <|
        \() ->
            Src21.insertAt n v list
                |> Expect.equal expected
