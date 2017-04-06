module Src9 exposing (..)

import SrcExtra1 exposing (dropWhile)
import SrcExtra2 exposing (takeWhile)


pack : List a -> List (List a)
pack list =
    case list of
        [] ->
            []

        x :: xs ->
            (x :: takeWhile ((==) x) xs) :: pack (dropWhile ((==) x) xs)
