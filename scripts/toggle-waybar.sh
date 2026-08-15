#!/bin/bash

if pgrep -f '/waybar$' >/dev/null; then
    pkill -f '/waybar$'
else
    /home/omodudu/.nix-profile/bin/waybar >/dev/null 2>&1 &
fi
