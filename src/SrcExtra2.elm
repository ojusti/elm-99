module SrcExtra2 exposing (..)


takeWhile : (a -> Bool) -> List a -> List a
takeWhile predicate list =
    case list of
        [] ->
            []

        x :: xs ->
            if (predicate x) then
                x :: takeWhile predicate xs
            else
                []
