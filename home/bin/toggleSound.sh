#!/bin/bash
etat=`amixer | grep 'Front Left: Playback' |cut -d' ' -f8 | head -n1`;
if [ $etat == '[on]' ]
	then {
		amixer set Master mute > /dev/null;
                # && amixer set Headphone mute > /dev/null && amixer set Speaker+LO mute > /dev/null;
	} else {
		amixer set Master unmute > /dev/null;
                # && amixer set Headphone unmute > /dev/null&& amixer set Speaker+LO unmute > /dev/null;

	}
fi
