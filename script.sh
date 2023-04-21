#!/bin/bash

while read -r url name; do
    echo ${url};
    echo ${name};
    echo "running command";
    youtube-dl ${url} --extract-audio --audio-format "mp3" --audio-quality 0 -o ${name};
done < arguments.txt
