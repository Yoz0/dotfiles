#!/bin/bash

STATE=`xrandr | grep VGA1 | cut -d' ' -f2`

if [[ $STATE == 'disconnected' ]]
then 
  xrandr --auto;
else
  xrandr --output VGA-1 --left-of eDP-1 --auto;
  xrandr --output eDP-1 --pos 1920x312;
fi


