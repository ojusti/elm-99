module Tests exposing (..)

import Test exposing (..)
import Test6
import Test7
import TestExtra1


all : Test
all =
    describe "99 problems" 
        [ Test6.suite
        , Test7.suite
        , TestExtra1.suite
        ]
