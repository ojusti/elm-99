module Tests exposing (..)

import Test exposing (..)
import Test6
import Test7
import TestExtra1
import Test17
import Test18
import Test20
import Test19
import Test21
import Test28a
import Test31


all : Test
all =
    describe "99 problems"
        [ Test6.suite
        , Test7.suite
        , TestExtra1.suite
        , Test17.suite
        , Test18.suite
        , Test20.suite
        , Test19.suite
        , Test21.suite
        , Test28a.suite
        , Test31.suite
        ]
