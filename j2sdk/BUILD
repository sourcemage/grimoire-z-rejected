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
	cd j2sdk${BIN_PATH}
	install -d /opt/java/j2sdk-precompiled-1.4
	mv * /opt/java/j2sdk-precompiled-1.4
	export JAVA_HOME=/opt/java/j2sdk-precompiled-1.4
	cp $SOURCE_CACHE/$SOURCE4 $JAVA_HOME/jre/lib/i386/
	cd $JAVA_HOME/jre/lib/i386
	bunzip2 $SOURCE4
	ln -sf libstdc++-libc6.3-2.so.2 libstdc++-libc6.1-1.so.3
fi							&&
cd $SOURCE_DIRECTORY					&&
export ALT_BOOTDIR="$JAVA_HOME"				&&
export ALT_MOZILLA_PATH=$SOURCE_DIRECTORY		&&
export ALT_DEVTOOLS_PATH="/usr/bin"			&&
export MILESTONE="ttcompiled" 				&&
export BUILD_NUMBER=`date +%s`				&&
export ALT_CACERTS_FILE=${ALT_BOOTDIR}/jre/lib/security/cacerts	&&
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
rm -rf zlib-1.1.3					&&
unpack $SOURCE5 ${MD5[4]}				&&
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
cd $SOURCE_DIRECTORY/control/build/linux-i?86		&&
mkdir -p /opt/java 					&&
cp -a j2sdk-image /opt/java/j2sdk-1.4.1-tt 		&&
cd /opt/java 						&&
rm -f j2sdk						&&
ln -sf j2sdk-1.4.1-tt j2sdk				&&
mkdir -p /etc/.java					&&
chmod a+w /etc/.java					&&
rm -rf /opt/java/j2sdk-precompiled-1.4			&&
[ ! -d /usr/lib/mozilla/plugins ] || ln -sf /opt/java/j2sdk/jre/plugin/i386/ns610/libjavaplugin_oji.so /usr/lib/mozilla/plugins/libjavaplugin_oji.so
)  >  $C_FIFO  2>&1
