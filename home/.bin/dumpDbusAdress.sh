#!/bin/sh
echo "" > $HOME/.cron_env
chmod 600 $HOME/.cron_env
for VARIABLE in DBUS_SESSION_BUS_ADDRESS DISPLAY
do
  env | grep "$VARIABLE" >> $HOME/.cron_env
  echo "export $VARIABLE" >> $HOME/.cron_env
done
exit 0
