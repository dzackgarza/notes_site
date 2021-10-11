#!/bin/bash

rm -rf /var/www/notes_site/*;
rm -rf ./Obsidian/*;
cp -r ~/Notes/Obsidian/* ./Obsidian;
mkdir /var/www/notes_site;
#mkdir figures;

#shopt -s globstar
#for i in **/*.txt; do # Whitespace-safe and recursive
    #process "$i"
#done

echo "Cleaned. Deleting unnecessary file types.."
find ./Obsidian -type f \( -iname '*.yaml' -o -iname "*.css" -o -iname "*.sty" -o -iname "*.tex" -o -iname "*.txt" -o -iname "*.sh" -o -iname "*.html" -o -iname "*.log" \) -exec rm {} \;


echo "Rendering md files..."
while read THISFILE; do
  echo "$THISFILE";
  awk 'FNR==1{print ""}1' "$THISFILE" | ./pandoc_stripmacros.sh | sed '/file:\/\//d' > temp.md && mv temp.md "$THISFILE"; 
done < <(find ./Obsidian -type f -iname "*.md" ) 

rm tikz.*;
#sed -i '/file:\/\//d' ./Obsidian/**/*.md;

emanote -L ./ gen /var/www/notes_site;
