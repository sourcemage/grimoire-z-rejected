#!/bin/sh
#
# Source Mage init.d install information
# SMGL-script-version=20030331
# SMGL-START:3 4 5:S90
# SMGL-STOP:0 1 2 6:K10
#

case $1 in
     start|restart|stop)  echo      "$ing Apache web server."
                          mkdir  -p  /var/run/httpd
                          apachectl  $1
                          ;;
                      *)  echo      "Usage: $0 {start|stop|restart}"
                          ;;
esac
