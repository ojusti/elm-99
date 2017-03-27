module Src1 exposing (..)

import List


last : List a -> Maybe a
last xs =
    case xs of
        [] ->
            Nothing

        [ x ] ->
            Just x

        head :: tail ->
            last tail
