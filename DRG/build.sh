#!/bin/sh
set -x # echo on
# list files in order with a backslash "\" at the end of each line
cat \
    misc.c5p\
    rituals.c5p\
    CommonWeapons.c5p\
    Glyphids.c5p\
    Gunner.c5p \
    Engineer.c5p \
    Driller.c5p \
    Scout.c5p \
    class.c5p\
  > DRG.c5m
set +x # echo off
echo "Done joining files."

# misc, rituals, weapons (universal), glyphids, commanders (already there), class (last)