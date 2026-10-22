#!/usr/bin/env bash
# Tidy the messy-repo practice tree:
#   1. create homework/
#   2. move all hw*.py files into homework/
#   3. delete top-level .tmp and .log files
#   4. leave every other file/folder untouched
set -eu

mkdir -p homework
mv hw*.py homework/
rm -f *.tmp *.log
