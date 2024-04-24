#!/bin/bash

SYMLINKS="./gen/build/src/syntax \
./gen/cmd/src/syntax \
./gen/lib/src/syntax \
./macro/src/syntax"

for symlink in $SYMLINKS
do
    rm -fr $symlink
    cp -av ./syntax $symlink
    git add $symlink
done

git commit -m "Remove repo symlinks by copying ./syntax directory"
