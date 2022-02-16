#!/bin/bash

# ./myscript.sh filename or cat filename | myscript.sh
[ $# -ge 1 -a -f "$1" ] && $(realpath "$1") input="$1" || input="-"
#cat $input

TMP_DIR=$(mktemp -d -t pandoc-XXXXXXXXXX);

cat $PANDOC_DIR/custom/latexmacs*.tex "$input" | \
  #sed 's/\!\[\[/\\!\[\[/g' | \
  sed '/file:\/\//d' > \
  $TMP_DIR/combined.temp ;

# toc doesn't work with emanote yet.

cat $TMP_DIR/combined.temp | pandoc \
  --quiet \
  -r markdown+simple_tables+table_captions+yaml_metadata_block+tex_math_single_backslash \
  --to=markdown \
  --lua-filter=./tikzcd.lua \
  --lua-filter=./convert_thm_env.lua \
  --lua-filter=./convert_math_delimiters.lua \
  --wrap=none \
  --standalone \
  -o "$TMP_DIR/out.temp"; 

if [ $? -ne 0 ]; then
  notify-send "Pandoc StripMacros" "Error compiling." --urgency=critical --expire-time=5000;
  exit 1;
fi

# Send output file, but strip away any tex comments (lines starting with %)
# Change image links
# Remove escapes for Obsidian-style wikilinks and tags
cat "$TMP_DIR/out.temp" | sed -E \
  -e '/^\\\%/d' \
  -e 's/\\\[\\\[/\[\[/g' -e 's/\\\]\\\]/\]\]/g' -e 's/\\\#/\#/g' -e 's/\\\|/|/g';
