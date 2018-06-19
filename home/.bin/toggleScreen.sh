#!/bin/bash

STATE=`xrandr | grep VGA1 | cut -d' ' -f2`

if [[ $STATE == 'disconnected' ]]
then 
  xrandr --auto;
else
  xrandr --output VGA1 --left-of eDP1 --auto;
  xrandr --output eDP1 --pos 1920x312;
fi


