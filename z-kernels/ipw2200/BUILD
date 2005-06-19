KVER=$(installed_version linux)
if [ -z $KVER ] ; then
  KVER=$(installed_version linux-new)
  if [ -z $KVER ] ; then
    KVER=`uname -r`
  fi 
fi &&
make KVER=$KVER 

