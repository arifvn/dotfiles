#!/bin/sh

# this will positioning my kitty to my favourite window size and position

loggedInUser="$(whoami)"
open -a "Kitty"
osascript <<EOS
#tell application "System Events"
    #set the props to get the properties of the front window of application process "kitty"
    #set theSBounds to {size, position} of props
#end tell

tell application "System Events" to tell application process "kitty" to tell window 1 to set {size, position} to {{1257, 673}, {11, 36}}
EOS
