(
#test if there is no JAVA_HOME then we need j2sdk binary
if [ $JAVA_HOME ]
then
	echo "java home = $JAVA_HOME"
else
        V=`echo ${BIN_VERSION} | sed -e "s/\./_/g"`
	# Check out where the tar file begins and extract it
	T=`grep -a tail $SOURCE_CACHE/j2sdk-${V}-linux-i?86.bin | cut -f 2 -d " "`
	tail $T $SOURCE_CACHE/j2sdk-${V}-linux-i?86.bin > install.sfx.$$
	chmod +x install.sfx.$$
	# Extract the files and move them to where we want the jdk installed.
	./install.sfx.$$
	install -d /opt/java/j2sdk-precompiled-1.4
	mv * /opt/java/j2sdk-precompiled-1.4
	export JAVA_HOME=/opt/java/j2sdk-precompiled-1.4/j2sdk1.4.1_01/
	cp $SOURCE_CACHE/$SOURCE4 $JAVA_HOME/jre/lib/i386/
	cd $JAVA_HOME/jre/lib/i386
	bunzip2 $SOURCE4
	ln -sf libstdc++-libc6.3-2.so.2 libstdc++-libc6.1-1.so.3
fi							&&
cd $SOURCE_DIRECTORY					&&
export ALT_BOOTDIR="$JAVA_HOME"				&&
export ALT_MOZILLA_PATH=$SOURCE_DIRECTORY		&&
export ALT_MOTIF_DIR=/usr				&&
export ALT_DEVTOOLS_PATH="/usr/bin"			&&
export MILESTONE="ttcompiled" 				&&
export BUILD_NUMBER=`date +%s`				&&
export DEV_ONLY=true					&&
export OTHER_LDFLAGS="-lpthread"			&&
unset JAVA_HOME						&&
unset CLASSPATH						&&
CFLAGS=${CFLAGS//-O3/}					&&
export OTHER_CFLAGS="$CFLAGS"				&&
unset CFLAGS						&&
unset LDFLAGS						&&
for i in hotspot/build/linux/makefiles/gcc.make \
	hotspot/build/solaris/makefiles/gcc.make \
	j2se/make/sun/image/generic/Makefile
do
        chmod +w $i
        cp $i $i.orig
        sed -e "s:\-O3:\-march=i686 \-fomit\-frame\-pointer \-s:g" \
	$i.orig > $i
done							&&
export MAKE_VERBOSE=true				&&
export INSANE=true					&&
echo "Red Hat Linux release 6.1 (LFS)" > /etc/redhat-release &&
cd $SOURCE_DIRECTORY/j2se/src/share/native/java/util/zip	&&
rm -rf $SOURCE_DIRECTORY/zlib-1.1.3			&&
tar -xvzf $SOURCE_CACHE/$SOURCE5			&&
cd zlib-${ZLIB_VERSION}					&&
mv adler32.c zadler32.c					&&
mv crc32.c zcrc32.c					&&
cd $SOURCE_DIRECTORY/j2se/make/java/zip/		&&
cp Makefile Makefile.orig				&&
chmod +w Makefile					&&
sed -e "s:1.1.3:${ZLIB_VERSION}:" Makefile.orig > Makefile	&&
cd $SOURCE_DIRECTORY/j2se/make/common			&&
cp Defs-linux.gmk Defs-linux.gmk.orig			&&
chmod +w Defs-linux.gmk					&&
sed -e 's:\-z defs::g'  Defs-linux.gmk.orig > Defs-linux.gmk	&&
cd $SOURCE_DIRECTORY/control/make 			&&
unset LD_PRELOAD					&&
make							&&
prepare_install                    			&&
cd $SOURCE_DIRECTORY/control/build/linux-i386		&&
mkdir -p /opt/java 					&&
cp -a j2sdk-image /opt/java/j2sdk-1.4.0-tt 		&&
cd /opt/java 						&&
ln -nsf j2sdk-1.4.0-tt j2sdk
)  >  $C_FIFO  2>&1
