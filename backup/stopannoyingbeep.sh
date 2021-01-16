#!/bin/sh

upsc ups > upsinfo.txt

BEEP=$(grep -i "beep" upsinfo.txt)

echo "$BEEP is the current status"
if [ "$BEEP" = "ups.beeper.status: enabled" ]
then
echo "Switching off the stupid noise"
#Switching off the beeper
upscmd -u admin -p mypasswd ups beeper.toggle

BEEP=$(grep -i "beep" upsinfo.txt)

echo "$BEEP is the current status"

fi


