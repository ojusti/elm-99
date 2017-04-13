module Src10 exposing (..)

import List


runLengths : List (List a) -> List ( Int, a )
runLengths xss =
    xss
        |> List.map encode
        |> removeNothing


encode : List a -> Maybe ( Int, a )
encode list =
    case list of
        [] ->
            Nothing

        x :: xs ->
            Just ( List.length list, x )


removeNothing : List (Maybe a) -> List a
removeNothing list =
    case list of
        [] ->
            []

        (Just x) :: xs ->
            x :: removeNothing xs

        Nothing :: xs ->
            removeNothing xs
