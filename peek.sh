#!/bin/bash

# Check that two arguments are provided
if [ $# -lt 2 ]; then
  echo "Usage: bash peek.sh <filename> <num_lines>"
  exit 1
fi

file=$1
num=$2

# Print first N lines
head -n "$num" "$file"

# Separator
echo "..."

# Print last N lines
tail -n "$num" "$file"
