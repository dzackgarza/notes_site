#!/bin/bash
DIR="/home/zack/Notes/Obsidian/"
#inotifywait -m -r -e move -e create -e close_write "$DIR" | while read f

inotifywait -m -r --format '%w%f' -e CLOSE_WRITE "$DIR" | while read f
do
  if [[ $f == *.md ]]; then
    echo "$f"
    destname="$(echo $f | sed 's/\/home\/zack\/Notes\//\.\//g')"
    echo "Moving |$f| to |$destname|"
    awk 'FNR==1{print ""}1' "$f" | ./pandoc_stripmacros.sh | sed '/file:\/\//d' > temp.md && mv temp.md "$destname" && echo "Copied."
    #cp "$f" "$destname" && echo "Copied."
  fi
  cp ~/Notes/Obsidian/index.md ./Obsidian/index.md;
done
