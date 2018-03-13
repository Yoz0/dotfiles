#!/bin/bash
# Enable compton fading
dbus-send --print-reply --dest=com.github.chjj.compton.${DISPLAY/:/_} / \
      com.github.chjj.compton.opts_set string:no_fading_openclose boolean:false
scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
[[ -f $1 ]] && convert /tmp/screen.png $1 -gravity center -composite -matte /tmp/screen.png
i3lock -i /tmp/screen.png
systemctl suspend
#Disable compton fading
dbus-send --print-reply --dest=com.github.chjj.compton.${DISPLAY/:/_} / \
      com.github.chjj.compton.opts_set string:no_fading_openclose boolean:true
rm /tmp/screen.png
