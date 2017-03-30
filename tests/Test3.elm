module Test3 exposing (..)

import Test exposing (..)
import Expect
import Src3


suite : Test
suite =
    describe "Problem 3"
        [ elementAt [ 1, 2, 3, 4 ] 2 <|
            Just 2
        , elementAt [ 1 ] 2 <|
            Nothing
        , elementAt [] 2 <|
            Nothing
        , elementAt [] (-1) <|
            Nothing
        , elementAt [ 'a', 'b', 'c' ] 2 <|
            Just 'b'
        ]


elementAt : List a -> Int -> Maybe a -> Test
elementAt list index expected =
    test ("elementAt " ++ (toString list) ++ " " ++ (toString index) ++ " == " ++ (toString expected)) <|
        \() ->
            Src3.elementAt list index
                |> Expect.equal expected
