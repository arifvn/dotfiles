#!/bin/sh

# this will positioning my chrome to my favourite window size and position

loggedInUser="$(whoami)"

if [[ $# -eq 0 ]]; then 
open -a "Google Chrome"
osascript <<EOS
tell application "google chrome" 
  set bounds of front window to {20, 40, 1257, 700}
end tell
EOS
else 
osascript <<EOS
tell application "google chrome" 
  set bounds of front window to {20, 40, 1257, $1}
end tell
EOS
fi
