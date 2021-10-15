#!/bin/sh
set -x # echo on
# list files in order with a backslash "\" at the end of each line
cat \
    mod_header.c5p\
    CommonWeapons.c5p\
    Glyphids.c5p\
    robot.c5p\
    rituals.c5p\
    Mining.c5p\
    Driller.c5p \
    rituals.c5p\
    Mining.c5p\
    Engineer.c5p \
    rituals.c5p\
    Mining.c5p\
    Gunner.c5p \
    rituals.c5p\
    Mining.c5p\
    Scout.c5p \
    rituals.c5p\
    Mining.c5p\
    Karl.c5p\
    Ommoran.c5p\
    Garrison.c5p\
    Misc_additions.c5p\
    class.c5p\
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
echo "Copied DRG.c5m to DRG mod folder."

# misc, rituals, weapons (universal), glyphids, commanders (already there), class (last)