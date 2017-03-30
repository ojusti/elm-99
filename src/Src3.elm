module Src3 exposing (..)

import List


elementAt : List a -> Int -> Maybe a
elementAt xs n =
    xs
        |> List.drop (n - 1)
        |> List.head
