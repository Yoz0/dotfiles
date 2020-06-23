#!/bin/bash
M1="eDP-1"
M2="DP-1-1"
STATE=`xrandr | grep $M2 | cut -d' ' -f2`

if [[ $STATE == 'disconnected' ]]
then
  xrandr --auto;
else
  xrandr --output $M2 --left-of $M1 --auto;
  xrandr --output $M1 --off;
fi


