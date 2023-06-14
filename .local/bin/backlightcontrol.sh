#!/bin/bash

current=$(</sys/class/leds/asus::kbd_backlight/brightness)
# echo $current
# echo $((current+6)) 
# echo $((current+1)) | sudo tee /sys/class/leds/asus::kbd_backlight/brightness
# exit 
if [[ current -lt 3 ]]
then
  # current=expr $current + 1
  echo $((current+1)) | tee /sys/class/leds/asus::kbd_backlight/brightness
elif [[ current -eq 3 ]]
then
   echo 0 | tee /sys/class/leds/asus::kbd_backlight/brightness
fi
