#!/bin/bash -x
START_POSITION=0
position=$START_POSITION
rollsTheDie()
{
	randomCheckForDie=$((RANDOM%6+1))
}

randomCheckForOption=$((RANDOM%3))
if [ $randomCheckForOption -eq 0 ]
then
	message="No play- The player stays in the same position"
	position=$position

elif [ $randomCheckForOption -eq 1 ]
then
	message="Ladder- The player moves ahead by the number of position"
	rollsTheDie
	position=$(($position+$randomCheckForDie))

elif [ $randomCheckForOption -eq 2 ]
then
	message="Snake- The player moves behind by the number of position"
	rollsTheDie
	position=$(($position-$randomCheckForDie))
fi
