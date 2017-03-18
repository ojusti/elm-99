module Src7 exposing (..)

type NestedList a
    = Elem a
    | SubList (List (NestedList a))


flatten : NestedList a -> List a
flatten nl =
    []