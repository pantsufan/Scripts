#!/bin/bash
count = 1
for f in *.mp4
do
  count=$((count+1))
  ffmpeg -i $f -vf scale=720:-1 -vcodec libx265 -crf 22 $count"-"$f
done
echo "Execution Done"
