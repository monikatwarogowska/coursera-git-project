#!/usr/bin/env bash
#File: guessinggame.sh
function take_number () {
	if [[ $1 -eq 1 ]]; then
	    echo "How many files are in the directory?"
	    read usr_input
	    while [[ ! $usr_input =~ ^[0-9]*$ ]]; do
		echo "(Note: number of files has to be a positive integer!) How many files are in the directory?"
		read usr_input
	    done
	    let "guess_attempt+=1"
	else
	    if [[ $2 -eq 0 ]]; then
		echo "There are more files in the directory. Try again:"
		read usr_input
		while [[ ! $usr_input =~ ^[0-9]*$ ]]; do
		    echo "(Note: number of files has to be a positive integer !!!!!!) Try again:"
		    read usr_input
		done
	    else
		echo "There are less files in the directory. Try again:"
		read usr_input
		while [[ ! $usr_input =~ ^[0-9]*$ ]]; do
		    echo "(Note: number of files has to be a positive integer !!!!!!) Try again:"
		    read usr_input
		done
	    fi
	fi
}
list_files=($(ls -p | grep -v "./" | wc)) 
let number_files=${list_files[0]}
guess_attempt=1
take_number guess_attempt
while [[ $usr_input -ne $number_files ]]; do
    if [[ $usr_input -lt $number_files ]]; then
	take_number guess_attempt 0
    else take_number guess_attempt 1
    fi
    let "guess_attempt+=1"
done
echo "You are great. It is a good answer!"
