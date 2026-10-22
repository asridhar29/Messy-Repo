#!/usr/bin/env bash
# Repeats the cleanup steps performed by hand on the messy-repo practice tree:
#   - scattered homework (hw*.py) -> homework/
#   - old notes (notes.txt, docs/README_old.txt) -> notes/
#   - build output/junk (*.tmp, *.log) -> build_output/
# lab0*.py and docs/archive/ (which holds the flag) are left in place.
set -eu

mkdir -p homework notes build_output

for f in hw1.py hw2.py hw3.py hw10.py; do
  [ -f "$f" ] && mv "$f" homework/
done

[ -f notes.txt ] && mv notes.txt notes/
[ -f docs/README_old.txt ] && mv docs/README_old.txt notes/

for f in cache.tmp build.tmp debug.log error.log; do
  [ -f "$f" ] && mv "$f" build_output/
done

echo "Cleanup complete."
