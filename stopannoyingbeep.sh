#!/bin/sh

#Uncomment while loop if you want it to run in the background, every 10 minutes. Other option is Linux watch

#while true
#do
#Couldn't get it working without saving to txt
upsc ups > upsinfo.txt

BEEP=$(grep -i "beep" upsinfo.txt)

echo "$BEEP is the current status"
if [ "$BEEP" = "ups.beeper.status: enabled" ]
then
echo "Switching off the stupid noise"
#Switching off the beeper
upscmd -u admin -p mypasswd ups beeper.toggle

BEEP=$(grep -i "beep" upsinfo.txt)

echo "$BEEP is the current status after switch"

fi
rm -f upsinfo.txt


#sleep 600
#done
