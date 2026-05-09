#!/bin/bash
# Usage: set-wallpaper.sh /path/to/new/wallpaper

# Save the selected wallpaper as the new wallpaper
cp "$1" /home/omodudu/Pictures/wallpapers/current_wallpaper.jpg

# set it immediately via swww
swww img /home/omodudu/Pictures/wallpapers/current_wallpaper.jpg
