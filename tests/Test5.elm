module Test5 exposing (..)

import Test exposing (..)
import Expect
import Src5


suite : Test
suite =
    describe "Problem 5"
        [ myReverse [1, 2, 3, 4] <| 
            [4, 3, 2, 1] 
        , myReverse [2, 1] <| 
            [1, 2] 
        , myReverse [1] <| 
            [1] 
        , myReverse [] <| 
            [] 
        , myReverse [ 'a', 'b', 'c' ] <| 
            [ 'c', 'b', 'a' ]
        ]

myReverse : List a -> List a -> Test
myReverse list expected =
    test ("myReverse " ++ (toString list) ++ " == " ++ (toString expected)) <|
        \() ->
            Src5.myReverse list
                |> Expect.equal expected