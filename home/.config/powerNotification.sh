#!/bin/bash
PATH=/bin:/usr/bin
if [[ -r "$HOME/.dbus/Xdbus" ]];
then
  . "$HOME/.dbus/Xdbus"
fi
battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`;
battery_state=`acpi -b | grep -oP '(Dis)?[Cc]harging'`;
if [[ $battery_level -le 10 && "$battery_state" == "Discharging" ]];
then
    notify-send "Battery low" "Battery level is ${battery_level}%" -u "critical";
fi

