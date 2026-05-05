#!/bin/bash

# Sprawdzenie, czy podano nazwę pliku jako argument
if [ $# -ne 1 ]; then
  echo "Użycie: $0 <ścieżka_do_pliku>"
  exit 1
fi

plik="$1"

# Sprawdzenie, czy plik istnieje
if [ ! -f "$plik" ]; then
  echo "Błąd: Plik '$plik' nie istnieje."
  exit 2
fi

# Zamiana tylko ciągu "14," na "14." (w miejscu)
sed -i 's/14,/14./g' "$plik"
sed -i 's/7,/7./g' "$plik"

echo "Zamieniono wszystkie wystąpienia '14, 7,' na '14. 7.' w pliku: $plik"
