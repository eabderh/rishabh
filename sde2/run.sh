#!/bin/bash

echo "#use \"nnr1.ml\";;" | ocaml > test.txt
cat test.txt
#ocaml <<< "#use "nnr1.ml" > test.txt



