#!/bin/bash -x
START_POSITION=0
FINAL_POSITION=100
position=$START_POSITION
IS_NO_PLAY=0
IS_LADDER=1
IS_SNAKE=2
rollsTheDie()
{
	randomCheckForDie=$((RANDOM%6+1))
}

checkPlayerOption()
{
	randomCheckForOption=$((RANDOM%3))

	case $randomCheckForOption in
	$IS_NO_PLAY)
		message="No play- The player stays in the same position"
		position=$position
	;;

	$IS_LADDER)
		message="Ladder- The player moves ahead by the number of position"
		rollsTheDie
		position=$(($position+$randomCheckForDie))
	;;

	$IS_SNAKE)
		message="Snake- The player moves behind by the number of position"
		rollsTheDie
		position=$(($position-$randomCheckForDie))
	;;
	esac
}

checkPosition()
{
	if [ $position -eq $FINAL_POSITION ]
        then
                message="You are the winner"
                return $position
        elif [ $position -gt $FINAL_POSITION ]
        then
                position=$(( $position - $randomCheckForDie ))

        elif [ $position -lt $START_POSITION ]
        then
                position=$START_POSITION
        fi

}

while [ $position -lt $FINAL_POSITION ]
do 
        checkPlayerOption
        checkPosition
done
