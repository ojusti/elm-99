module Src6 exposing (isPalindrome)


isPalindrome : List a -> Bool
isPalindrome xs =
    xs == List.reverse xs
