#!/bin/bash
NAME="$1"
SRC="Src$1"
TEST="Test$1"

cat <<EOT > src/$SRC.elm
module $SRC exposing (..)


EOT

cat <<EOT > tests/$TEST.elm
module $TEST exposing (..)

import Test exposing (..)
import Expect
import $SRC


suite : Test
suite =
    describe "Problem $NAME"
        [
        ]
EOT

sed -i "/]/i\ \ \ \ \ \ \ \ , $TEST.suite" tests/Tests.elm
sed -i "3,/^$/ {/^$/i\
import $TEST
}" tests/Tests.elm
