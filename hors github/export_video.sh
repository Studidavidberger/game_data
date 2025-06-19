#!/bin/bash

v_export='video_lua.ogv'

# Delete old video file
if [ -e "$v_export" ]; then
    rm $v_export
    echo "Suppression de lancien fichier video"
fi

if [ -z "$1" ]; then
    echo "File not found : video";
    echo "Syntax ./export_video.sh video file: video.mp4 frame rate : 25"
    exit 0
else
    rm $v_export
    ffmpeg -i $1 -c:v libtheora -b:v 1500k -r $2 -c:a libvorbis -b:a 192k $v_export;
    echo "video exported $1 $2 $v_export"
fi
    xdg-open $v_export
exit 0
