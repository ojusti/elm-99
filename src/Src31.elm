module Src31 exposing (..)

import List


isPrime : Int -> Bool
isPrime n =
    let
        sqrt_n =
            n
                |> toFloat
                |> sqrt
                |> floor

        divides_n_with_remainder =
            \i ->
                n % i /= 0
    in
        n
            > 1
            && (List.range 2 sqrt_n
                    |> List.all divides_n_with_remainder
               )
