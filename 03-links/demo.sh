#!/bin/bash

echo "== Step 1: create the original file =="
echo "original content" > original.txt
ls -l original.txt

echo ""
echo "== Step 2: create a SYMBOLIC link =="
ln -s original.txt symlink.txt
ls -l original.txt symlink.txt

echo ""
echo "== Step 3: create a HARD link =="
ln original.txt hardlink.txt
ls -l original.txt hardlink.txt

echo ""
echo "== Step 4: read through both links =="
echo "-- reading symlink.txt --"
cat symlink.txt
echo "-- reading hardlink.txt --"
cat hardlink.txt

echo ""
echo "== Step 5: delete the original file =="
rm original.txt

echo ""
echo "== Step 6: try reading both links again =="
echo "-- symlink.txt (expected to BREAK) --"
cat symlink.txt
echo "-- hardlink.txt (expected to SURVIVE) --"
cat hardlink.txt
