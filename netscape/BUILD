(
for i in `find /usr|grep install.log`; do
for c in `echo $i|wc -c`;do 
for s in `echo $i|cut -b1-$(($c-12))`;do
INSTALL_DIRECTORY=$s
done
done
done
ln -fs /usr/lib/libstdc++-*libc6.2-2*.so $SOURCE_DIRECTORY/libstdc++-libc6.1-1.so.2
cp $SCRIPT_DIRECTORY/config.ini $SOURCE_DIRECTORY
./netscape-installer
ln -fs /usr/lib/libstdc++-*libc6.2-2*.so $INSTALL_DIRECTORY/libstdc++-libc6.1-1.so.2
echo cd $INSTALL_DIRECTORY >/usr/bin/netscape6
echo ./netscape >>/usr/bin/netscape6
chmod 755 /usr/bin/netscape6
)
