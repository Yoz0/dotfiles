#!/bin/bash
PATH=/bin:/usr/bin
if [[ -r "$HOME/.cron_env" ]];
then
  . "$HOME/.cron_env"
fi
battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`;
battery_state=`acpi -b | grep -oP '(Dis)?[Cc]harging'`;
battery_time=`acpi -b | grep -oP '[0-9]{2}:[0-9]{2}:[0-9]{2}'`;

if [[ "$battery_state" == "Discharging" ]];
then
  echo `date +%R` $battery_level $battery_time;
fi
if [[ $battery_level -le 10 && "$battery_state" == "Discharging" ]];
then
  $HOME/.bin/sleep.sh;
  exit 0 ;
fi
if [[ $battery_level -le 15 && "$battery_state" == "Discharging" ]];
then
    notify-send "Battery low" "Battery level is ${battery_level}%" -u "critical";
fi

