#!/bin/bash

function count_files {
  echo $(ls -1 | wc -l)
}

file_count=$(count_files)
guess=-1

echo "How many files are in the current directory?"

while [[ $guess -ne $file_count ]]
do
  read guess

  if [[ $guess -lt $file_count ]]
  then
    echo "Too low. Try again:"
  elif [[ $guess -gt $file_count ]]
  then
    echo "Too high. Try again:"
  else
    echo "Congratulations! You guessed correctly."
  fi
done
