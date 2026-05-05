#!/bin/bash

# Checking if a filename was provided as an argument
if [ $# -ne 1 ]; then
  echo "Użycie: $0 <ścieżka_do_pliku>"
  exit 1
fi

plik="$1"

# Checking if a file exists
if [ ! -f "$plik" ]; then
  echo "Błąd: Plik '$plik' nie istnieje."
  exit 2
fi

sed -i 's/14,/14./g' "$plik"
sed -i 's/7,/7./g' "$plik"

echo "All occurrences replaced '14, 7,' na '14. 7.' in file: $plik"
