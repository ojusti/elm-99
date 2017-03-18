module Test7 exposing (..)

import Test exposing (..)
import Expect
import Src7 exposing (..)


suite : Test
suite =
    describe "Problem 7"
        [ flattenAndCompare nl1 <|
            List.range 1 9
        , flattenAndCompare (SubList [ Elem 1, Elem 2 ]) <|
            [ 1, 2 ]
        , flattenAndCompare (SubList [ Elem "a", Elem "b" ]) <|
            [ "a", "b" ]
        , flattenAndCompare (SubList []) <|
            []
        ]


nl0 : NestedList number
nl0 =
    SubList [ Elem 1, Elem 2 ]


nl1 : NestedList number
nl1 =
    SubList
        [ Elem 1
        , SubList
            [ SubList
                [ Elem 2
                , SubList [ Elem 3, Elem 4 ]
                ]
            , Elem 5
            ]
        , Elem 6
        , SubList [ Elem 7, Elem 8, Elem 9 ]
        ]


flattenAndCompare : NestedList a -> List a -> Test
flattenAndCompare xs ys =
    test ("flatten " ++ (toString xs) ++ " == " ++ (toString ys)) <|
        \() ->
            flatten xs
                |> Expect.equal ys
