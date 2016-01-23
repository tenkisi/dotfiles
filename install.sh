#!/bin/sh

CURRENT=$(pwd)

for f in .??*
do
    [ "$f" = ".git" ] && continue
    ln -snfv "$CURRENT"/"$f" "$HOME"/"$f"
done
