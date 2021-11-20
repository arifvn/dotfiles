#!/bin/bash

# this will positioning my kitty to my favourite window size and position

loggedInUser="$(whoami)"

if [[ $# -eq 0 ]]; then 
open -a "Alacritty"
osascript <<EOS
  tell application "system events" to tell application process "Alacritty" to tell window 1 to set {size, position} to {{1257, 673}, {11, 36}}
EOS
else 
osascript <<EOS
  tell application "System Events" to tell application process "Alacritty" to tell window 1 to set {size, position} to {{1257, $1}, {11, 36}}
EOS
fi
