#!/bin/bash

count=0
while IFS= read -r line; do
  ((count++))
  echo "Line $count: $line"
done < "some_large_file.txt"

# Process the last line separately
echo "Last line processed"
