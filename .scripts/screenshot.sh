#!/bin/bash

SHOT_PATH="$HOME/Pictures/screenshots/$(date +screenshot-%d-%m-%y-%H%M-%S.png)"

case $1 in 
	--area)
		maim -s $SHOT_PATH
		xclip -selection clipboard -t image/png -i $SHOT_PATH
		notify-send -t 1500 "Area screenshot created" "<small>$SHOT_PATH</small>"
	;;
	--screen)
		maim $SHOT_PATH
		xclip -selection clipboard -t image/png -i $SHOT_PATH
		notify-send -t 1500 "Full screen screenshot created" "<small>$SHOT_PATH</small>"
	;;
esac
