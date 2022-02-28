#!/bin/bash
count = 1
for f in *.mp4
do
  count=$((count+1))
  ffmpeg -i $f -vf scale=1280x720:flags=lanczos -c:v libx265 -preset fast -crf 22 -pix_fmt yuv420p -c:a copy $count"-"$f
done
echo "Execution Done"
