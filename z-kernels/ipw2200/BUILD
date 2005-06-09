message "${PROBLEM_COLOR}ATTENTION, ${DEFAULT_COLOR}You need these kernel modules compiles from your kernel or the driver won't work:"
message "${PROBLEM_COLOR}firmware_class \nARC4 cipher algorithm (crypto lib support) \nCRC32 (also in crypto lib support)\n${DEFAULT_COLOR}"

KVER=$(installed_version linux)
if [ -z $KVER ] ; then
  KVER=$(installed_version linux-new)
  if [ -z $KVER ] ; then
    KVER=`uname -r`
  fi 
fi &&
make KVER=$KVER 

