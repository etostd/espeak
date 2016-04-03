#!/bin/bash
c=1
while [ $c -gt 0 ] 
do
  echo "Run $c ..."
  (( c++ ))
  ../src/espeak -vno  -s 90 < textfifo 
done
