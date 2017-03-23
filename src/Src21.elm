module Src21 exposing (..)

import Src17 exposing (split)
import Tuple exposing (first, second)


insertAt : Int -> a -> List a -> List a
insertAt n v list =
    let
        half =
            split list (n - 1)
    in
        first half ++ v :: second half
