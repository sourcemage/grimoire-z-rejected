(
cd $SOURCE_DIRECTORY					&&
export ALT_BOOTDIR="$JAVA_HOME"				&&
export ALT_MOZILLA_PATH=$SOURCE_DIRECTORY		&&
export ALT_DEVTOOLS_PATH="/usr/bin"			&&
export MILESTONE="SMGL" 				&&
export BUILD_NUMBER="$(date +%Y%m%d)-Z-REJECTED"        &&
export ALT_CACERTS_FILE=${ALT_BOOTDIR}/jre/lib/security/cacerts	&&
export DEV_ONLY=true					&&
export MAKE_VERBOSE=true                                &&
## export INSANE=true is not needed now if "make  CC=$(which gcc)" is used
## and a symlink is made for mozilla_headers. Also added sedit of Sanity.gmk
## file for quieter startup, lot of errors before.Removed make verbose = true also
RULES=$SOURCE_DIRECTORY/j2se/make/common/               &&
sedit "s/--version/-dumpversion/g"  $RULES/Sanity.gmk   &&
sedit "s/REQUIRED_GCC_VER = 2.91.*/REQUIRED_GCC_VER = $(gcc -dumpversion)/g" $RULES/Sanity.gmk &&
sedit "s/REQUIRED_GCC_VER = 2.9[56789].*/REQUIRED_GCC_VER = $(gcc -dumpversion)/g" $RULES/Sanity.gmk  &&
sedit "s:\-z defs::g"  $RULES/Defs-linux.gmk            &&
### we build only the j2sdk-image, it saves 200MB. It might be possible to also only package the jre 
### image.But seems pointless.
sedit "s/images\:\: sanity-images post-sanity-images image-jre image-jdk image-jdk-debug/images\:\: \
sanity-images post-sanity-images image-jre image-jdk/" $RULES/Release.gmk &&

### some path must have changed as it misdetects the mozilla headers
mkdir share/plugin/mozilla_headers                      &&
ln -s $SOURCE_DIRECTORY/share/plugin/mozilla_headers_ns600/bool.h \
$SOURCE_DIRECTORY/share/plugin/mozilla_headers          &&

unset JAVA_HOME						&&
unset CLASSPATH						&&
export OTHER_CFLAGS=${CFLAGS}				&&
export OTHER_LDFLAGS="-lpthread"			&&
unset CFLAGS						&&
unset LDFLAGS						&&
for i in hotspot/build/linux/makefiles/gcc.make \
	hotspot/build/solaris/makefiles/gcc.make \
	j2se/make/sun/image/generic/Makefile
do
        sedit "s:\-O3:$OTHER_CFLAGS \-fomit\-frame\-pointer \-s:g" $i
done                                                    &&

### replace 1.1.3 zlib due to security flaw
cd $SOURCE_DIRECTORY/j2se/src/share/native/java/util/zip  &&
rm -rf zlib-1.1.3                                       &&
unpack $SOURCE3 ${MD5[2]}                               &&
cd zlib-${ZLIB_VERSION}	                                &&
mv adler32.c zadler32.c	                                &&
mv crc32.c zcrc32.c                                     &&
cd $SOURCE_DIRECTORY/j2se/make/java/zip/                &&
sedit "s:1.1.3:${ZLIB_VERSION}:"  Makefile              &&

cd $SOURCE_DIRECTORY/control/make                       &&
unset LD_PRELOAD                                        &&
make CC="$(which gcc)"                                  &&
### check the compiled binary can initialise
if $SOURCE_DIRECTORY/control/build/linux-i?86/j2sdk-image/bin/java -version >& /dev/null;
then
 ### remove j2sdk-bin bootstrap compiler if installed
 if    spell_installed      j2sdk-bin
  then  dispel  j2sdk-bin
 fi                                                     &&
 prepare_install                                        &&
 cd $SOURCE_DIRECTORY/control/build/linux-i?86		&&
 install -d /usr/java					&&
 cp -a j2sdk-image /usr/java/j2sdk-1.4.1-${BUILD_NUMBER}	&&
 cd /usr/java                                           &&
 for i in *;
 do  [ "$i" = "j2sdk-1.4.1-${BUILD_NUMBER}" ] ||  rm -rf $i;
 done                                                   &&
 ln -snf j2sdk-1.4.1-${BUILD_NUMBER} j2sdk              &&
 rm -rf /opt/java/                                      &&
 mkdir -p /etc/.java					&&
 chmod a+w /etc/.java					&&
 POOPY=/usr/lib/mozilla/plugins/                        &&
 mkdir -p $POOPY                                        &&
 ln -sf /usr/java/j2sdk/jre/plugin/i386/ns610/libjavaplugin_oji.so $POOPY/libjavaplugin_oji.so &&
 ln -sf /usr/java/j2sdk/jre/plugin/i386/ns4/javaplugin.so $POOPY/javaplugin.so
 ### Second one is needed by konqueror
else message "${WARNING}SORRY, JAVA APPEARS TO HAVE FAILED BUILDING${DEFAULT_COLOR}" &&
     rm -rf /opt/java/                                       &&
     false
fi                                                      

) > $C_FIFO  2>&1
