#!/bin/bash
# Flimshaw Industries commandline timer and growl notifier 
utimer -c $1m
if [[ "$2" == "" ]]
    then growlnotify -sm "Timer Complete!  It was set for $1 minute(s)."
    else growlnotify -sm "$2"
fi
afplay ~/Dropbox/home/bell.mp3 &