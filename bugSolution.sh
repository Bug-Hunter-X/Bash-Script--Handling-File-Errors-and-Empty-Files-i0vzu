#!/bin/bash

# Check if file exists
if [ ! -f "some_large_file.txt" ]; then
  echo "Error: File 'some_large_file.txt' not found."
exit 1
fi

# Check if file is empty
if [ -s "some_large_file.txt" ]; then
  count=0
  while IFS= read -r line || [[ -n "$line" ]]; do  # Improved read with empty line check
    ((count++))
    echo "Line $count: $line"
done < "some_large_file.txt"
  echo "Last line processed"
else
  echo "Error: File 'some_large_file.txt' is empty."
fi
