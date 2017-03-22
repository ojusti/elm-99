module Src18 exposing (..)

import List


sublist : Int -> Int -> List a -> List a
sublist start end list =
    list
        |> List.take end
        |> List.drop (start - 1)
