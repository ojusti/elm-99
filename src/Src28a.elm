module Src28a exposing (..)

import List


sortByListLengths : List (List a) -> List (List a)
sortByListLengths lists =
    List.sortBy List.length lists
