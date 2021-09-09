#!/usr/bin/env bash
string=$1
echo downloading $1
ffmpeg -i "https://thechoiceisyours.whatisthematrix.com/generated/v7/high/$(echo -n ${string} | md5sum | head -c32).mp4" -ss '0:20.0' -t '0:06' -f mp4 -loglevel 20 -c copy -map 0:1 ${string}.oga
