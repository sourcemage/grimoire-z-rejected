#!/bin/sh
#
# Source Mage init.d install information
# SMGL-script-version=20030331
# SMGL-START:3 4 5:S90
# SMGL-STOP:0 1 2 6:K10
#

case $1 in
    start)  echo      "starting perforce server."
	    su - perforce -c ". /etc/p4d.conf && p4d -d -q"
            ;;
              
     stop)  echo      "stopping perforce server."
	    su - perforce -c ". /etc/p4d.conf && p4 admin stop"
            ;;

rotatelog)
	    echo "rotating perforce logfile"
	    su - perforce -c '. /etc/p4d.conf && \
	    			cd $P4ROOT && \
	    			p4 admin stop && \
				mv $P4LOG $P4LOG.old && \
				p4d -d -q'
	    ;;

checkpoint)
	    su - perforce -c '. /etc/p4d.conf && p4d -r $P4ROOT -jc -z'
	    ;;

   verify)  su - perforce -c '. /etc/p4d.conf && p4 verify -qu //...'
   	    ;;

  restart)  $0  stop  &&
            $0  start
            ;;

        *)  echo  "Usage: $0 {start|stop|restart|checkpoint|verify|rotatelog}"
            ;;
esac
