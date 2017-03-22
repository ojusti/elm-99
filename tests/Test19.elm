module Test19 exposing (..)

import Test exposing (..)
import Expect
import Src19


suite : Test
suite =
    describe "Problem 19"
        [ rotate 3 [ 1, 2, 5, 5, 2, 1 ] <| 
            [ 5, 2, 1, 1, 2, 5 ]
        , rotate 13 (List.range 1 10) <| 
            [ 4, 5, 6, 7, 8, 9, 10, 1, 2, 3 ]
        , rotate 1 (List.range 1 5) <| 
            [ 2, 3, 4, 5, 1 ]
        , rotate 0 (List.range 1 5) <| 
            [ 1, 2, 3, 4, 5 ]
        , rotate -1 (List.range 1 5) <| 
            [ 5, 1, 2, 3, 4 ]
        , rotate -6 (List.range 1 5) <| 
            [ 5, 1, 2, 3, 4 ]
        , rotate 3 (List.range 1 5) <| 
            [ 4, 5, 1, 2, 3 ]
        , rotate 1 [ "1", "2", "3", "4" ] <| 
            [ "2", "3", "4", "1" ]
        ]

rotate : Int -> List a -> List a -> Test
rotate n list expected =
    test ("rotate " ++ (toString n) ++ " " ++ (toString list) ++ " == " ++ (toString expected)) <|
        \() -> 
            Src19.rotate n list |>
                Expect.equal expected