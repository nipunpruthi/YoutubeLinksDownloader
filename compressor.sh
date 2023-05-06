#!/bin/bash

N=10
for i in *.mp3; do
    ((i=i%N));((i++==0)) && wait
    echo "Compressing $i to ./compressed/$i"  
    lame -b 64 $i ./compressed/$i &
    ...
done