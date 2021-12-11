#!/bin/bash

# this will positioning my iterm to my favourite window size and position

if [[ $1 -eq 0 ]] && [[ $2 -eq 0 ]]; then 
osascript <<EOF
tell application "iTerm2"
	set bounds of front window to {71, 53, 1370, 779}
end tell
EOF
fi

if [[ ! $1 -eq 0 ]] && [[ $2 -eq 0 ]]; then 
osascript <<EOF
tell application "iTerm2"
  set bounds of front window to {15, 40, 1264, $1}
end tell
EOF
fi

if [[ ! $1 -eq 0 ]] && [[ ! $2 -eq 0 ]]; then 
osascript <<EOF
tell application "iTerm2"
  set bounds of front window to {15, 40, $2, $1}
end tell
EOF
fi
