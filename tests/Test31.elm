module Test31 exposing (..)

import Test exposing (..)
import Expect
import Src31


suite : Test
suite =
    describe "Problem 31"
        [ isNotPrime 36 
        , isNotPrime 10 
        , isNotPrime -1 
        , isNotPrime 1 
        , isNotPrime 0 
        , isNotPrime 120 
        , isPrime 2
        , isPrime 23
        , isNotPrime 6000 
        , isPrime 7919
        , isNotPrime 7911 
        , isPrime 63247
        , isNotPrime 63249 
        ]

isPrime : Int -> Test
isPrime n =
    test ((toString n) ++ " is prime") <|
        \() ->
            n |> Src31.isPrime |> Expect.true "is not prime"

isNotPrime : Int -> Test
isNotPrime n =
    test ((toString n) ++ " is not prime") <|
        \() ->
            n |> Src31.isPrime |> Expect.false "is prime"