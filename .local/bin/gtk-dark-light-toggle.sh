#!/bin/sh

set -euo

if test "$(gsettings get org.gnome.desktop.interface color-scheme)" = "'prefer-light'"; then
  gsettings set org.gnome.desktop.interface color-scheme prefer-dark
  gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
  kitty +kitten themes --reload-in=all Cherry Midnight
  notify-send "Dark Mode Enabled"
else
  gsettings set org.gnome.desktop.interface color-scheme prefer-light
  gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita'
  kitty +kitten themes --reload-in=all Cherry
  notify-send "Light Mode Enabled"
fi
