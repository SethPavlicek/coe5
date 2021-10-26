#!/bin/sh
set -x # echo on
# list files in order with a backslash "\" at the end of each line
cat \
    mod_header.c5p\
    Grunts.c5p\
    Mactera.c5p\
    MiscBugs.c5p\
    Dreadnoughts.c5p\
  > DRG.c5mCRL
dos2unix -n DRG.c5mCRL DRG.c5m
rm DRG.c5mCRL
set +x # echo off
echo "Done joining files."
set -x # echo on
cp -f DRG.c5m DRGmod/
mkdir -p DRGmod/images
cp -f images/*.tga DRGmod/images/
cp -f images/banner.png DRGmod/
cp -f coe5ws.txt DRGmod/
set +x # echo off
echo "Copied all DRG files to DRG mod folder."

# misc, rituals, weapons (universal), glyphids, commanders (already there), class (last)