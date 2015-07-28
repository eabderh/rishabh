#!/bin/bash

echo "#use \"nnr1.ml\";;" > run.txt
echo "#use \"testing.ml\";;" >> run.txt
cat run.txt | ocaml > test.txt

rm run.txt
cat test.txt



