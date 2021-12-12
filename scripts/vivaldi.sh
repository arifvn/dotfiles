#!/bin/sh

# this will positioning my chrome to my favourite window size and position

if [[ $# -eq 0 ]]; then 
open -a "Vivaldi"
osascript <<EOS
tell application "vivaldi" 
	set bounds of front window to {71, 53, 1370, 779}
end tell
EOS
else 
osascript <<EOS
tell application "vivaldi" 
	set bounds of front window to {71, 53, 1370, $1}
end tell
EOS
fi
