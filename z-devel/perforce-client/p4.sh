#!/bin/bash 
# First check if this variable is already set 
# then if not set, check it (maybe), then set it 

if  [ -z "$P4CONFIG" ] ; then 
	P4CONFIG=.p4config  # For Perforce client 
fi 
export P4CONFIG

if [ -z "$P4EDITOR" ] && [ -f /etc/profile.d/editor.sh ] ;then
	. /etc/profile.d/editor.sh
	P4EDITOR=$EDITOR 
fi
export P4EDITOR
