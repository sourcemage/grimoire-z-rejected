#!/bin/sh
#
# Source Mage init.d install information
# SMGL-script-version=20030331
# SMGL-START:3 4 5:S90
# SMGL-STOP:0 1 2 6:K10
#

source /etc/init.d/functions

SETI="/usr/bin/setiathome"
NICE=19
OUT="/dev/null"
USER="/usr/share/setiathome/user_info.sah"

case $1 in

  start)
   if  [  !  -f  ${USER}  ]
   then
    echo  "SETI@Home not configured, cannot start!"
    echo  "Run /usr/share/setiathome/setiathome from /usr/share/setiathome once to configure"
   else
     echo     "Starting SETI@Home..."
     loadproc  ${SETI}  -nice  ${NICE}  >  ${OUT}  2>  ${OUT}
   fi
   ;;

  stop)
   echo     "Stopping SETI@Home..."
   killproc  /usr/share/setiathome
   ;;

  restart)
   echo "Restarting SETI@Home..."
   $0 stop
   /usr/bin/sleep 1
   $0 start
   ;;

  *)
        echo     "Usage: $0 {start|stop|restart}"
   ;;

esac
