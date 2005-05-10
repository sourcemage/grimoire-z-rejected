# /etc/vmware directory must not exist, otherwise the installation will be
# unsuccesfull
rm -rf /etc/vmware/*

# create temp etc/rc.d
rm -rf /tmp/vmware_rc.d
mkdir -p /tmp/vmware_rc.d/rc{0,1,2,3,4,5,6}.d

# we need to terminate all services using vmnet kernel module
killall vmnet-natd    &> /dev/null
killall vmnet-dhcpd   &> /dev/null
killall vmware-nmbd   &> /dev/null
killall vmware-smbd   &> /dev/null
killall vmnet-bridge  &> /dev/null
killall vmnet-netifup &> /dev/null
sleep 1
killall -9 vmnet-natd    &> /dev/null 
killall -9 vmnet-dhcpd   &> /dev/null 
killall -9 vmware-nmbd   &> /dev/null 
killall -9 vmware-smbd   &> /dev/null 
killall -9 vmnet-bridge  &> /dev/null
killall -9 vmnet-netifup &> /dev/null

rmmod vmnet &> /dev/null

if lsmod | grep vmnet
then
	message "${RED}Can't unload vmnet module, please try to find out why and contact author${DEFAULT}"
	message "running 'lsof | grep vmnet' might give you some hint, when run from root account"
	return 1
fi

true
