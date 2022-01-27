#!/bin/bash
count = 1
for f in *.mp4
do
  count=$((count+1))
  ffmpeg -i $f -vcodec h264 -acodec aac $count"-"$f
done
echo "Execution Done"
