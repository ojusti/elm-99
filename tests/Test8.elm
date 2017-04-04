module Test8 exposing (..)

import Test exposing (..)
import Expect
import Src8


suite : Test
suite =
    describe "Problem 8"
        [ noDupes [ 1, 1, 1, 1, 2, 5, 5, 2, 1 ] <| 
            [ 1, 2, 5, 2, 1 ]
        , noDupes [ 2, 1, 1, 1 ] <| 
            [ 2, 1 ]
        , noDupes [ 2, 2, 2, 1, 1, 1 ] <| 
            [ 2, 1 ]
        , noDupes [ 1 ] <| 
            [ 1 ]
        , noDupes [] <| 
            []
        , noDupes [ "aa", "aa", "aa" ] <| 
            [ "aa" ]
        , noDupes [ "aab", "b", "b", "aa" ] <| 
            [ "aab", "b", "aa" ]
        ]

noDupes : List a -> List a -> Test
noDupes list expected =
    test ("noDupes " ++ (toString list) ++ " == " ++ (toString expected)) <|
        \() ->
            Src8.noDupes list
                |> Expect.equal expected
