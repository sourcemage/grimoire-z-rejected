(
    groupadd perforce	2>/dev/null
    mkdir /home/perforce
    useradd -g perforce perforce 2>/dev/null

    P4_HOME=~perforce
    
    prepare_install &&
    install -m 755 p4d /usr/bin/p4d 	&&
    install -m 644 $SCRIPT_DIRECTORY/p4d.conf /etc/p4d.conf	&& 
    install -m 755 $SCRIPT_DIRECTORY/p4d.sh /etc/init.d/p4d.sh	&& 
    install -m 644 -o perforce -g perforce $SCRIPT_DIRECTORY/p4config \
    						/$P4_HOME/.p4config	&& 
    install -m 755 -D -o perforce -g perforce  $SCRIPT_DIRECTORY/backup.sh \
    						$P4_HOME/scripts/backup.sh  &&
    install -m 755 -d -o perforce -g perforce $P4_HOME/p4root &&
    ln -sf ../init.d/p4d.sh /etc/rc0.d/K10p4d	&&
    ln -sf ../init.d/p4d.sh /etc/rc1.d/K10p4d	&&
    ln -sf ../init.d/p4d.sh /etc/rc2.d/K10p4d	&&
    ln -sf ../init.d/p4d.sh /etc/rc3.d/S90p4d	&&
    ln -sf ../init.d/p4d.sh /etc/rc4.d/S90p4d	&&
    ln -sf ../init.d/p4d.sh /etc/rc5.d/S90p4d	&&
    ln -sf ../init.d/p4d.sh /etc/rc6.d/K10p4d
) > $C_FIFO 2>&1
