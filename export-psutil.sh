#!/usr/bin/env bash

set -e

HERE=$(pwd)
files=$(git ls-files)
cd ../psutil || exit

for file in $files; do
   mkdir -p $(dirname "$file")

   if [[ "$file" != @(import-psutil.sh|export-psutil.sh) ]]; then
      mkdir -p $(dirname "$file")
      cp "$HERE/$file" $(dirname "$file")
   fi
done
