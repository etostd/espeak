#!/bin/bash
c=1
while [ $c -gt 0 ] 
do
  echo "Run $c ..."
  (( c++ ))
  ../src/espeak -vno -p 110 -s 100 < textfifo 
done
