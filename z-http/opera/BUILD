(
cd $SOURCE_DIRECTORY  		&&
prepare_install			&&
echo y | ./install.sh -s	&&
ln -sf /usr/lib/libXm.so.2 /usr/lib/opera/plugins/libXm.so.3
) > $C_FIFO 2>&1
