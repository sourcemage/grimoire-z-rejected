(
    groupadd perforce	2>/dev/null
    mkdir /home/perforce 2>/dev/null
    useradd -g perforce perforce 2>/dev/null

    P4_HOME=~perforce
    
    prepare_install 							    &&
    install -m 755 p4d /usr/bin/p4d 					    &&
    install -m 644 p4d.1 /usr/share/man/man1				    &&
    install -m 755 -d -o perforce -g perforce $P4_HOME/p4root 		    &&

    # The other files should only be updated if they don't already exist

    if [ ! -f /etc/p4d.conf ]; then
	install -m 644 $SCRIPT_DIRECTORY/p4d.conf /etc/p4d.conf
    fi

    if [ ! -f  /$P4_HOME/.p4config ]; then

	install -m 644 -o perforce -g perforce $SCRIPT_DIRECTORY/p4config \
    						/$P4_HOME/.p4config
    fi

    if [ ! -f $P4_HOME/scripts/backup.sh ]; then
	install -m 755 -D -o perforce -g perforce  $SCRIPT_DIRECTORY/backup.sh \
    						$P4_HOME/scripts/backup.sh 
    fi

) > $C_FIFO 2>&1
