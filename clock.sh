#!/usr/bin/env bash
# the simplest time announcer

while true; do 
    ffmpeg -i ~/test/matrix/downloads/17red-a-b3-c$(date '+%H%M')-d-e3-f-g3-h3-i.oga -loglevel 20 -f wav - | aplay; 
    sleep 15m; 
done
