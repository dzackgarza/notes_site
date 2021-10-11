#!/bin/bash

rm -rf /tmp/output/*;
rm -rf ./Obsidian/*;
cp -r ~/Notes/Obsidian/* ./Obsidian;
#mkdir figures;

#shopt -s globstar
#for i in **/*.txt; do # Whitespace-safe and recursive
    #process "$i"
#done

while read THISFILE; do
  echo "$THISFILE";
  awk 'FNR==1{print ""}1' "$THISFILE" | ./pandoc_stripmacros.sh | sed '/file:\/\//d' > temp.md && mv temp.md "$THISFILE"; 
done < <(find ./Obsidian -type f -iname "*.md" ) 

rm tikz.*;
find ./Obsidian -type f -iname '*.yaml' -exec rm {} \;
sed -i '/file:\/\//d' ./Unsorted/**/*.md;

emanote -L /home/zack/projects/chenghaomou.github.io/Obsidian gen /tmp/output;
