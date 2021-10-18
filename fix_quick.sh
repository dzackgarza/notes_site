#!/bin/bash


while read THISFILE; do
  echo "$THISFILE";
  prestr="---
date: $(basename $THISFILE .md)
tags: [quick_notes] 
---


"

  echo "$prestr$(cat $THISFILE)" > ./tempfile;
  mv ./tempfile $THISFILE;
done < <(find . -type f -iname "*.md" ) 
