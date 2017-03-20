module Src18 exposing (..)

import List


sublist : Int -> Int -> List a -> List a
sublist start end list =
    List.take end list
        |> List.drop (start - 1)
