#!/usr/bin/env bash
#File: guessinggame.sh

function guessingame {
 numFiles=$(ls | wc -l)
 userGuess=0

 printf "Guess the number of files in the directory: "
 read -r userGuess

 while(true)
 do
  if [[ userGuess -eq numFiles ]]
  then
   echo "Congratulations you have guessed the number of files!!!!"
   break
  
  elif [[ userGuess -gt numFiles ]]
  then
   echo "Sorry! Your guess is too heigh." 
   printf "Try again. Guess the number of files: "
   read -r userGuess

  else
   echo "Sorry! Your guess is too low." 
   printf "Try again. Guess the number of files: "
   read -r userGuess

  fi

 done

}

guessingame
