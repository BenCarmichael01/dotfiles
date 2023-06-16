#!/bin/bash

current=$(brightnessctl -m g)

if [[ current -eq 20 ]]
then
  brightnessctl set 40
else
  brightnessctl set 40+
fi
