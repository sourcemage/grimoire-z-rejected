(
ln -fs /opt/gcc2/lib/libstdc++-*libc6.2-2*.so $SOURCE_DIRECTORY/libstdc++-libc6.1-1.so.2
cp $SCRIPT_DIRECTORY/config.ini $SOURCE_DIRECTORY
./netscape-installer
for i in `cat /tmp/netscape.iw|grep netscape-bin|cut -f3|grep -v binnew|grep -v binold`;
do ln -s $i /usr/bin/netscape
for y in `echo $i|wc -c`;
do 
s=`echo $y-14|bc`
INSTALL_DIRECTORY=`echo $i|cut -b1-$s`
done
done
if [ -e /usr/bin/netscape ]; then
rm -f /usr/bin/netscape
fi
touch /usr/bin/netscape
echo "#!/bin/bash" > /usr/bin/netscape
echo "cd $INSTALL_DIRECTORY" >> /usr/bin/netscape
echo "./netscape" >> /usr/bin/netscape
chmod a+x /usr/bin/netscape
if [ ! -e $INSTALL_DIRECTORY/libstdc++-libc6.1-1.so.2 ]; then
ln -fs /opt/gcc2/lib/libstdc++-*libc6.2-2*.so $INSTALL_DIRECTORY/libstdc++-libc6.1-1.so.2
fi
)
