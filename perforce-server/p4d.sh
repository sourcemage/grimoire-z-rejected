#!/bin/sh

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
