module Test18 exposing (..)

import Test exposing (..)
import Expect
import Src18
import List


suite : Test
suite =
    describe "Problem 18"
        [ sublist 3 7 (List.range 1 10) 
            <| List.range 3 7
        , sublist 2 100 [ 'a', 'b', 'c' ] 
            <| [ 'b', 'c' ]
        , sublist -1 2 (List.range 1 100) 
            <| [1, 2]
        , sublist -3 -2 [-3, -2, -1, 0, 1, 2, 3] 
            <| []
        , sublist 5 3 [ "indices", " are", "inverted"] 
            <| []
        , sublist 0 1 (List.range 1 10) 
            <| [1]
        , sublist -7 -3 (List.range 1 10) 
            <| []
        ]

sublist : Int -> Int -> List a -> List a -> Test
sublist start end list expected = 
    test ("sublist " ++ (toString start) ++ " " ++ (toString end) ++ " " ++ (toString list) ++ " == " ++ (toString expected)) <|
        \() ->
            Src18.sublist start end list
                |> Expect.equal expected


