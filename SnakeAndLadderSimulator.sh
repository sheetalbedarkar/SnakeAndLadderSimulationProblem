#!/bin/bash -x
START_POSITION=0
position=$START_POSITION
rollsTheDie()
{
	randomCheckForDie=$((RANDOM%6+1))
	echo $randomCheckForDie
	position=$(($position+$randomCheckForDie))
	echo $position
}
rollsTheDie
