module Src19 exposing (..)

import List


rotate : Int -> List a -> List a
rotate n list =
    let
        places =
            n % List.length list
    in
        List.drop places list ++ List.take places list
