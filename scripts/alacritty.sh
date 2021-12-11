#!/bin/bash

# this will positioning Alacritty window to spesific size and position

loggedInUser="$(whoami)"

if [[ $# -eq 0 ]]; then 
open -a "Alacritty"
osascript <<EOS
	tell application "System Events" to tell application process "Alacritty" to tell window 1 to set {size, position} to {{1296, 740}, {72, 49}}
EOS
else 
osascript <<EOS
	tell application "System Events" to tell application process "Alacritty" to tell window 1 to set {size, position} to {{1296, $1}, {72, 49}}
EOS
fi
