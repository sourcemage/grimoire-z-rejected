(
prepare_install &&

case $MOZILLA in
	y|Y)	
		echo "Installing for Mozilla"
		if [ -e /usr/lib/mozilla/plugins/libflashplayer.so ]; then
			rm -f /usr/lib/mozilla/plugins/libflashplayer.so
		fi
		if [ -e /usr/lib/mozilla/plugins/flashplayer.xpt ]; then
			rm -f /usr/lib/mozilla/plugins/flashplayer.xpt
		fi
		cp libflashplayer.so /usr/lib/mozilla/plugins/ &&
		cp flashplayer.xpt /usr/lib/mozilla/plugins/
	;;
esac &&

case $FIREFOX in
        y|Y)
                echo "Installing for firefox"
                if [ -e /usr/lib/firefox-0.8.0+/plugins/libflashplayer.so ]; then
			rm -f /usr/lib/firefox-0.8.0+/plugins/libflashplayer.so
                fi
                if [ -e /usr/lib/firefox-0.8.0+/plugins/flashplayer.xpt ]; then
                        rm -f /usr/lib/firefox-0.8.0+/plugins/flashplayer.xpt
                fi
                cp libflashplayer.so /usr/lib/firefox-0.8.0+/plugins/ &&
                cp flashplayer.xpt /usr/lib/firefox-0.8.0+/plugins/
	;;
esac &&

case $KDEBASE in
	y|Y)	
		echo "Installing for Konqueror"
		echo "After install, add /usr/lib/konqueror to the Plugins folders list and click on the \"Scan for New Plugins\" button"
		if [ -e /usr/lib/konqueror/libflashplayer.so ]; then
			rm -f /usr/lib/konqueror/libflashplayer.so
		fi
		if [ -e /usr/lib/konqueror/flashplayer.xpt ]; then
			rm -f /usr/lib/konqueror/flashplayer.xpt
		fi
		if ! [ -f /usr/lib/konqueror ]; then
			mkdir --mode=755 /usr/lib/konqueror
			echo "created /usr/lib/konqueror"
		fi
		cp libflashplayer.so /usr/lib/konqueror/ &&
		cp flashplayer.xpt /usr/lib/konqueror/
	;;
esac &&


case $OPERA in
	y|Y)	
		echo "Installing for Opera"
		if [ -e /usr/lib/opera/plugins/libflashplayer.so ]; then
			rm -f /usr/lib/opera/plugins/libflashplayer.so
		fi
		if [ -e /usr/lib/opera/plugins/flashplayer.xpt ]; then
			rm -f /usr/lib/opera/plugins/flashplayer.xpt
		fi
		cp libflashplayer.so /usr/lib/opera/plugins/ &&
		cp flashplayer.xpt /usr/lib/opera/plugins/
	;;
esac &&


case $NETSCAPE in
	y|Y)	
		echo "Installing for Netscape"
		if [ -e /usr/lib/netscape/plugins/libflashplayer.so ]; then
			rm -f /usr/lib/netscape/plugins/libflashplayer.so
		fi
		if [ -e /usr/lib/netscape/plugins/flashplayer.xpt ]; then
			rm -f /usr/lib/netscape/plugins/flashplayer.xpt
		fi
		cp libflashplayer.so /usr/lib/netscape/plugins/ &&
		cp flashplayer.xpt /usr/lib/netscape/plugins/
	;;
esac

) > $C_FIFO 2>&1
