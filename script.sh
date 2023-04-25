#!/bin/bash

N=7
while read -r name url; do
    ((i=i%N));((i++==0)) && wait
    echo "url : ${url} started, file name : ${name}" ;
    youtube-dl ${url} --extract-audio --audio-format "mp3" --audio-quality 3 -o "${name}%(ext)s" &
echo "url : ${url} completed, file name : ${name}" ;

done < arguments.txt
