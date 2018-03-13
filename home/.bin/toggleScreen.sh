#!/bin/bash

STATE=`xrandr | grep VGA1 | cut -d' ' -f2`

if [[ $STATE == 'disconnected' ]]
then 
  xrandr --auto;
else
  xrandr --output VGA1 --right-of eDP1 --auto;
fi


