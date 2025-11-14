#!/bin/sh

set -e

i=1
while :; do
    screencapture -t png /tmp/temp_shot.png
    padded_i=$(printf "%04d" "$i")
    newname="screenshot-${padded_i}.png"
    mv /tmp/temp_shot.png "$newname"
    i=$((i+1))
    sleep 3
done

