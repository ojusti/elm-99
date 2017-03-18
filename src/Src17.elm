module Src17 exposing (..)


split : List a -> Int -> ( List a, List a )
split list count =
    ( List.take count list, List.drop count list )
