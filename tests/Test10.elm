module Test10 exposing (..)

import Test exposing (..)
import Expect
import Src10


suite : Test
suite =
    describe "Problem 10"
        [ runLengths [ [ 1, 1, 1, 1 ], [ 2 ], [ 5, 5 ], [ 2 ], [ 1 ] ] <| 
            [ ( 4, 1 ), ( 1, 2 ), ( 2, 5 ), ( 1, 2 ), ( 1, 1 ) ]
        , runLengths [ [ 2 ], [ 5, 5 ], [ 2 ], [ 1 ] ] <| 
            [ ( 1, 2 ), ( 2, 5 ), ( 1, 2 ), ( 1, 1 ) ]
        , runLengths [ [ 1, 1, 1, 1 ], [ 2 ], [ 5, 5 ] ] <| 
            [ ( 4, 1 ), ( 1, 2 ), ( 2, 5 ) ]
        , runLengths [ [ 1, 1, 1, 1 ] ] <| 
            [ ( 4, 1 ) ]
        , runLengths [ [ "a", "a", "a", "a" ], [ "b" ], [ "c", "c" ], [ "b" ], [ "a" ] ] <| 
            [ ( 4, "a" ), ( 1, "b" ), ( 2, "c" ), ( 1, "b" ), ( 1, "a" ) ]
        , runLengths [ [] ] <| 
            []
        , runLengths [] <| 
            []
        ]

runLengths : List (List a) -> List ( Int, a ) -> Test
runLengths lists expected =
    test ("runLengths " ++ (toString lists) ++ " == " ++ (toString expected)) <|
        \() ->
            Src10.runLengths lists
                |> Expect.equal expected
