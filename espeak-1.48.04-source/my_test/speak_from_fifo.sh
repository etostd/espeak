#!/bin/bash
../src/espeak -vno -p 110 -s 100 < start.txt 
c=1
while [ $c -gt 0 ] 
do
  echo "Run $c ..." > /var/log/lirctmp/espeak.out
  (( c++ ))
  ../src/espeak -vno -p 110 -s 100 < textfifo  >> /var/log/lirctmp/espeak.out 2>&1
done
