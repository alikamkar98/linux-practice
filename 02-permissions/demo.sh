#!/bin/bash
echo "== Creating a test file =="
touch test.txt
ls -l test.txt

echo "== Setting permissions to 644 =="
chmod 644 test.txt
ls -l test.txt

echo "== Adding execute permission =="
chmod +x test.txt
ls -l test.txt

echo "== Removing write permission =="
chmod u-w test.txt
ls -l test.txt
