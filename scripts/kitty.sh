#!/bin/bash

# this will positioning my kitty to my favourite window size and position

# osascript <<EOS
	# tell application "System Events" to get properties of window 1 of application process "kitty"
# EOS

if [[ $1 -eq 0 ]] && [[ $2 -eq 0 ]]; then 
open -a "Kitty"
osascript <<EOS
	tell application "System Events" to tell application process "kitty" to tell window 1 to set {size, position} to {{1296, 740}, {72, 49}}
EOS
fi

if [[ ! $1 -eq 0 ]] && [[ $2 -eq 0 ]]; then 
open -a "Kitty"
osascript <<EOS
  tell application "System Events" to tell application process "kitty" to tell window 1 to set {size, position} to {{1296, $1}, {72, 49}}
EOS
fi

if [[ ! $1 -eq 0 ]] && [[ ! $2 -eq 0 ]]; then 
open -a "Kitty"
osascript <<EOS
  tell application "System Events" to tell application process "kitty" to tell window 1 to set {size, position} to {{$2, $1}, {72, 49}}
EOS
fi
