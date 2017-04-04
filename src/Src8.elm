module Src8 exposing (..)


noDupes : List a -> List a
noDupes list =
    case list of
        [] ->
            []

        [ x ] ->
            [ x ]

        x :: y :: xs ->
            if (x == y) then
                y :: xs |> noDupes
            else
                x :: (y :: xs |> noDupes)
