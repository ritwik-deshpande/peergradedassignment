#!/usr/bin/env bash

# File: guessinggame.sh

function getnumberoffiles {
  count=$(ls -lrt |wc -l)
  echo $count
}

count=$(getnumberoffiles)
echo "Guess the number of files in my current directory"
read inp

while [[ $count -ne $inp ]]
do
  if [[ $count -gt $inp ]]
  then
    echo "Its smaller than the final answer, guess again"
    read inp
  elif [[ $count -lt $inp ]]
  then
    echo "Its greate than the final answer, guess again"
    read inp
  fi
done

echo "Congrats! Thats the right guess"