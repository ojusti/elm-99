module Src20 exposing (..)

import List


dropAt : Int -> List a -> List a
dropAt n list =
    (List.take (n - 1) list) ++ (List.drop n list)



{- I like this one, but it is too much
   [ List.take (n - 1), List.drop n ]
       |> List.map (\f -> f list)
       |> List.concat
-}
