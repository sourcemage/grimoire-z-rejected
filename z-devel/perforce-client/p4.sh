#!/bin/bash 
# First check if this variable is already set 
# then if not set, check it (maybe), then set it

# Okay the P4CONFIG variable is the location of the .p4config file
# if you leave the variable as is perforce will look for the file
# .p4config starting from the current directory and going down to
# the root of your client.
# If you give P4CONFIG an explicit location (ie ~/.p4config or
# /root/.p4config) perforce will look there and only there for
# the file.

if  [ -z "$P4CONFIG" ] ; then 
	P4CONFIG=.p4config  # For Perforce client 
fi 
export P4CONFIG

if [ -z "$P4EDITOR" ] && [ -f /etc/profile.d/editor.sh ] ;then
	. /etc/profile.d/editor.sh
	P4EDITOR=$EDITOR 
fi
export P4EDITOR
