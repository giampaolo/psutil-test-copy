#!/usr/bin/env bash

set -e

HERE=$(pwd)
cd ../psutil || exit
PSUTIL_DIR=$(pwd)
files=$(git ls-files)
cd "$HERE"

for file in $files; do
   mkdir -p $(dirname "$file")
   cp "$PSUTIL_DIR/$file" $(dirname "$file")
done
