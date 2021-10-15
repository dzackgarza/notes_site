#!/bin/bash
DIR="/home/zack/Notes/Obsidian/"
#inotifywait -m -r -e move -e create -e close_write "$DIR" | while read f

inotifywait -m -r --format '%w%f' -e CLOSE_WRITE "$DIR" | while read f
do
  if [[ $f == *.md ]]; then
    echo "$f"
    destname="$(echo $f | sed 's/\/home\/zack\/Notes\//\.\//g')"
    echo "Moving |$f| to |$destname|"
    cp "$f" "$destname" && echo "Copied."
  fi
done
