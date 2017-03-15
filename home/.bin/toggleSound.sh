#!/bin/bash
etat=`amixer -c 1 | grep 'Mono: Playback' |cut -d' ' -f8 | head -n1`;
if [ $etat == '[on]' ]
	then {
		amixer -c 1 set Master mute > /dev/null && amixer -c 1 set Headphone mute > /dev/null && amixer -c 1 set Speaker+LO mute > /dev/null;
	} else {
		amixer -c 1 set Master unmute  > /dev/null && amixer -c 1 set Headphone unmute > /dev/null&& amixer -c 1 set Speaker+LO unmute > /dev/null;

	}
fi
