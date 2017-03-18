module Test17 exposing (..)

import Test exposing (..)
import Expect
import Src17


suite : Test
suite =
    describe "Problem 17"
        [ split (List.range 1 5) 0 <|
            ( [], [ 1, 2, 3, 4, 5 ] )
        , split (List.range 1 5) 2 <|
            ( [ 1, 2 ], [ 3, 4, 5 ] )
        , split (List.range 1 5) 3 <|
            ( [ 1, 2, 3 ], [ 4, 5 ] )
        , split (List.range 1 5) 4 <|
            ( [ 1, 2, 3, 4 ], [ 5 ] )
        , split (List.range 1 5) 5 <|
            ( [ 1, 2, 3, 4, 5 ], [] )
        , split (List.range 1 5) 6 <|
            ( [ 1, 2, 3, 4, 5 ], [] )
        , split (List.range 1 5) (-1) <|
            ( [], [ 1, 2, 3, 4, 5 ] )
        , split [ "aab", "b", "c", "aa" ] 2 <|
            ( [ "aab", "b" ], [ "c", "aa" ] )
        ]


split : List a -> Int -> ( List a, List a ) -> Test
split xs n result =
    test ("split " ++ (toString xs) ++ ", " ++ (toString n) ++ " == " ++ (toString result)) <|
        \() ->
            Src17.split xs n
                |> Expect.equal result
