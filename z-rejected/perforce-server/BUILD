(
    groupadd perforce	2>/dev/null
    mkdir /home/perforce 2>/dev/null
    useradd -g perforce perforce 2>/dev/null

    P4_HOME=~perforce
    
    prepare_install &&
    install -m 755 p4d /usr/bin/p4d 	&&
    install -m 644 $SCRIPT_DIRECTORY/p4d.conf /etc/p4d.conf	&& 
    install -m 644 -o perforce -g perforce $SCRIPT_DIRECTORY/p4config \
    						/$P4_HOME/.p4config	&& 
    install -m 755 -D -o perforce -g perforce  $SCRIPT_DIRECTORY/backup.sh \
    						$P4_HOME/scripts/backup.sh  &&
    install -m 755 -d -o perforce -g perforce $P4_HOME/p4root &&

) > $C_FIFO 2>&1
