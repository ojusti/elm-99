module Src4 exposing (..)


countElements : List a -> Int
countElements =
    List.foldl (\_ i -> i + 1) 0
