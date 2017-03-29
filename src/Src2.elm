module Src2 exposing (..)

import List


penultimate : List a -> Maybe a
penultimate =
    List.reverse >> List.drop 1 >> List.head
