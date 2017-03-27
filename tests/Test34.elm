module Test34 exposing (..)

import Test exposing (..)
import Expect
import Src34


suite : Test
suite =
    describe "Problem 34"
        [ totient 10 <|
            4
        , totient 25 <|
            20
        , totient 120 <|
            32
        , totient 0 <|
            0
        , totient 1600 <|
            640
        , totient 37 <|
            36
        , totient 330 <|
            80
        , totient 65934 <|
            19440
        , totient 1313 <|
            1200
        , totient 45 <|
            24
        , totient -23 <|
            0
        ]


totient : Int -> Int -> Test
totient n expected =
    test ("totient" ++ (toString n) ++ " == " ++ (toString expected)) <|
        \() ->
            Src34.totient n
                |> Expect.equal expected
