#!/bin/bash

if [[ ! $1 ]]; then
echo "Connected to VPN JAPAN"
osascript <<EOF
tell application "System Events"
        tell current location of network preferences
                set VPN to service "VPN JAPAN"
                if exists VPN then connect VPN
                repeat while (current configuration of VPN is not connected)
                    delay 1
                end repeat
        end tell
end tell
EOF
else
echo "Disconnected from VPN JAPAN"
osascript <<EOF
tell application "System Events"
        tell current location of network preferences
                set VPN to service "VPN JAPAN"
                if exists VPN then disconnect VPN
        end tell
end tell
return
EOF
fi

