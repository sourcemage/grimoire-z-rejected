add_p4config()
{
    if grep P4CONFIG /etc/profile >/dev/null 2>&1; then
	:
    else
	echo "export P4CONFIG=.p4config  # For Perforce client" >> /etc/profile
    fi
}


(
    prepare_install 				&&
    install -m 755 p4 /usr/bin/p4 		&&
    install -m 755 p4web /usr/bin/p4web		&&
    add_p4config
) > $C_FIFO 2>&1
