#!/usr/bin/env bash

get_string() {
    echo -ne '17'$1'-a-b3-c'$2'-d-e3-f-g3-h3-i\0'
}

pad_time() {
    echo " "
}
mkdir downloads
cd downloads
{
    for c in "red" "blue"; do
        for h in {0..23}; do
            for m in {0..59}; do
                time=$(printf %02d%02d ${h} ${m})
                get_string $c $time
            done
        done
    done
} | xargs -P8 -0 -n 1 ../download.sh
