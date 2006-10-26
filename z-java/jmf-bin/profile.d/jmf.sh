#!/bin/bash 
#
export JMFHOME="/usr/share/JMF-VERSION"
export CLASSPATH="$JMFHOME/lib/jmf.jar:$JMFHOME/lib/mediaplayer.jar:$JMFHOME/lib/multiplayer.jar:.:$CLASSPATH"
export LD_LIBRARY_PATH="$JMFHOME/lib:${LD_LIBRARY_PATH}"
export PATH="${PATH}:$JMFHOME/bin"
