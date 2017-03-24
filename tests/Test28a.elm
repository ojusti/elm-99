module Test28a exposing (..)

import Test exposing (..)
import Expect
import Src28a


suite : Test
suite =
    describe "Problem 28a"
        [ sortByListLengths [ [], [ 1 ], 1..2, 1..3, 1..4, 1..5 ] <|
            [ 0, 1, 2, 3, 4, 5 ]
        , sortByListLengths [ [] ] <|
            [ 0 ]
        , sortByListLengths [ [], [ 1 ], 1..10, 1..4, 1..3, 1..2 ] <|
            [ 0, 1, 2, 3, 4, 10 ]
        , sortByListLengths [ [ 14 ], [ 15 ], [], [ 1 ], [ 12 ], [ 13 ] ] <|
            [ 0, 1, 1, 1, 1, 1 ]
        , sortByListLengths [ [ "a", "b", "c" ], [ "a", "b" ], [ "a" ] ] <|
            [ 1, 2, 3 ]
        ]

(..) : Int -> Int -> List Int
(..) start end =
    List.range start end

sortByListLengths : List (List a) -> List Int -> Test
sortByListLengths lists lengths =
    test ("sortByListLengths " ++ (toString lists) ++ ") == " ++ (toString lengths)) <|
        \() ->
            List.map List.length (Src28a.sortByListLengths lists)
                |> Expect.equal lengths