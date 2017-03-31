module Src5 exposing (..)


import List 


myReverse : List a -> List a
myReverse =
    List.foldl (::) []