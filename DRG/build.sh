#!/bin/sh
set -x # echo on
# list files in order with a backslash "\" at the end of each line
cat \
    Gunner.c5p \
    Engineer.c5p \
    Driller.c5p \
    Scout.c5p \
  > DRG.c5m.final
set +x # echo off
echo "Done joining files."
