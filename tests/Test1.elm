module Test1 exposing (..)

import Test exposing (..)
import Expect
import Src1


suite : Test
suite =
    describe "Problem 1"
        [ last (1..4) <|
            Just 4
        , last [ 1 ] <|
            Just 1
        , last [] <|
            Nothing
        , last [ 'a', 'b', 'c' ] <|
            Just 'c'
        ]


(..) : Int -> Int -> List Int
(..) start end =
       List.range start end

last : List a -> Maybe a -> Test
last list expected =
    test ("last " ++ (toString list) ++ " == " ++ (toString expected)) <|
        \() ->
            Src1.last list
                |> Expect.equal expected
