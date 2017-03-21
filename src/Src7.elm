module Src7 exposing (..)


type NestedList a
    = Elem a
    | SubList (List (NestedList a))


flatten : NestedList a -> List a
flatten nl =
    case nl of
        Elem x ->
            [ x ]

        SubList xs ->
            xs
                |> List.map flatten
                |> List.concat
