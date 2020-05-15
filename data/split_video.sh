#!/usr/bin/env bash
if [ $# -eq 0 ]; then
  echo "No arguments provided"
  echo "expected: $0 <input_dir> <output_dir> <split_into_seconds>"
  echo "example:  $0 tmp source 600"
  exit 99
fi
INPUT=$1
OUTPUT=$2
VIDEO=`ls ${INPUT}/*`
piece_count=0
for video in $VIDEO
do
  duration=$( ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 $video )
  SEQ=$( seq 0 $3 $duration )
  echo $video
  echo $duration
  echo $SEQ
#  for piece in $SEQ
#  do
#    $(time ffmpeg -v quiet -y -i ${video} -vcodec copy -acodec copy -ss ${piece} -t $3 ./${OUTPUT}/${piece_count}_${piece}.mkv)
#    piece_count=$(( piece_count + 1 ))
#  done
done
  
 
