#!/usr/bin/env bash
# File: guessinggame.sh

function is_it_right {

if [[ $1 -eq $2 ]]
then
	echo "You are correct!  Good guess!"
	let answer=1
else
	if [[ $1 -lt $2 ]]
	then
		echo "Your answer is too low.  Try again. "
	else
		echo "Your answer is too high.  Try again. "
	fi
fi
}

{
answer=0
file_num=$(ls -Ang | grep -c '^-')
echo "Type in a guess for how many files are in the current directory then press Enter:"

while [[ $answer -eq 0 ]]
do
	read response
	is_it_right $response $file_num
done

}
