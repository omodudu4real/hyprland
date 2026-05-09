#!/bin/bash

# Check if connected
SSID=$(nmcli -t -f ACTIVE,SSID dev wifi | grep '^yes' | cut -d: -f2)

if [[ -n "$SSID" ]]; then
    echo "󰒢 $SSID"
fi
