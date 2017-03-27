module Src34 exposing (..)


totient : Int -> Int
totient n =
    if (n <= 0) then
        0
    else if (n == 1) then
        1
    else
        List.range 1 (n - 1)
            |> List.filter (\x -> coprime x n)
            |> List.length


coprime : Int -> Int -> Bool
coprime a b =
    gcd a b == 1


gcd : Int -> Int -> Int
gcd a b =
    if b == 0 then
        a
    else
        gcd b (a % b)
