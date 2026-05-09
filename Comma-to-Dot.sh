#!/bin/bash

# Checking if a filename was provided as an argument
if [ $# -ne 1 ]; then
  echo "Use: $0 <patch_to_file>"
  exit 1
fi

plik="$1"

# Checking if a file exists
if [ ! -f "$plik" ]; then
  echo "Error: File '$plik' doesnt exist."
  exit 2
fi

sed -i 's/14,/14./g' "$plik"
sed -i 's/7,/7./g' "$plik"

echo "All occurrences replaced '14, 7,' na '14. 7.' in file: $plik"
