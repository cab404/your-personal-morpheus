#!/usr/bin/env bash
# the simplest time announcer

while true; do 
    date
    ffmpeg -i ./downloads/17red-a-b3-c$(date '+%H%M')-d-e3-f-g3-h3-i.oga -loglevel 20 -filter_complex 'afade=t=out:st=5:d=1:curve=hsin' -f wav - | aplay; 
    sleep 15m; 
done
