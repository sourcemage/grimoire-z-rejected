(
prepare_install &&

case $MOZILLA in
	y|Y)	
		if [ -d /usr/lib/mozilla/plugins ]; then
			echo "Installing for Mozilla"
			if [ -e /usr/lib/mozilla/plugins/libflashplayer.so ]; then
				rm -f /usr/lib/mozilla/plugins/libflashplayer.so
			fi
			if [ -e /usr/lib/mozilla/plugins/flashplayer.xpt ]; then
				rm -f /usr/lib/mozilla/plugins/flashplayer.xpt
			fi
			cp libflashplayer.so /usr/lib/mozilla/plugins/ &&
			cp flashplayer.xpt /usr/lib/mozilla/plugins/
		fi
	;;
esac &&

case $FIREFOX in
        y|Y)
		FIREFOX_VERSION=$(installed_version firefox)
		if [ "$FIREFOX_VERSION" == "cvs" ]; then
			FIREFOX_DIR="/usr/lib/firefox-0.8.0+"
		else
			FIREFOX_DIR="/usr/lib/firefox-$FIREFOX_VERSION"
		fi
		if [ -d $FIREFOX_DIR/plugins ]; then
	                echo "Installing for firefox"
	                if [ -e $FIREFOX_DIR/plugins/libflashplayer.so ]; then
				rm -f $FIREFOX_DIR/plugins/libflashplayer.so
	                	fi
	                if [ -e $FIREFOX_DIR/plugins/flashplayer.xpt ]; then
	                        rm -f $FIREFOX_DIR/plugins/flashplayer.xpt
	                fi
	                cp libflashplayer.so $FIREFOX_DIR/plugins/ &&
	                cp flashplayer.xpt $FIREFOX_DIR/plugins/
		fi
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
		if ! [ -d /usr/lib/konqueror ]; then
			mkdir --mode=755 /usr/lib/konqueror
			echo "created /usr/lib/konqueror"
		fi
		cp libflashplayer.so /usr/lib/konqueror/ &&
		cp flashplayer.xpt /usr/lib/konqueror/
	;;
esac &&


case $OPERA in
	y|Y)	
		if [ -d /usr/lib/opera/plugins ]; then
			echo "Installing for Opera"
			if [ -e /usr/lib/opera/plugins/libflashplayer.so ]; then
				rm -f /usr/lib/opera/plugins/libflashplayer.so
			fi
			if [ -e /usr/lib/opera/plugins/flashplayer.xpt ]; then
				rm -f /usr/lib/opera/plugins/flashplayer.xpt
			fi
			cp libflashplayer.so /usr/lib/opera/plugins/ &&
			cp flashplayer.xpt /usr/lib/opera/plugins/
		fi
	;;
esac &&


case $NETSCAPE in
	y|Y)	
		if [ -d /usr/lib/netscape/plugins ]; then
			echo "Installing for Netscape"
			if [ -e /usr/lib/netscape/plugins/libflashplayer.so ]; then
				rm -f /usr/lib/netscape/plugins/libflashplayer.so
			fi
			if [ -e /usr/lib/netscape/plugins/flashplayer.xpt ]; then
				rm -f /usr/lib/netscape/plugins/flashplayer.xpt
			fi
			cp libflashplayer.so /usr/lib/netscape/plugins/ &&
			cp flashplayer.xpt /usr/lib/netscape/plugins/
		fi
	;;
esac

) > $C_FIFO 2>&1
