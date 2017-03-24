module Src21 exposing (..)

import Src17 exposing (split)
import Tuple exposing (first, second)


insertAt : Int -> a -> List a -> List a
insertAt n v list =
    let
        part =
            split list (n - 1)
    in
        first part ++ [ v ] ++ second part
