#!/bin/bash

for file in files/*; do
  if [ -f "$file" ]; then
    filename=$(basename "$file")

    first_char="${filename:0:1}"

    folder=$(echo "$first_char" | tr '[:upper:]' '[:lower:]')

    if [ -d "$folder" ]; then
      mv "$file" "$folder/"

    fi
  fi
done