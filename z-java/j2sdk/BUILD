cd $SOURCE_DIRECTORY					&&
# remove bundled motif sources and patch to use lesstif
if echo $OPTS| grep -q lesstif
then export ALT_MOTIF_DIR=/usr                          &&
     rm -rf $SOURCE_DIRECTORY/motif                     &&
     patch -p1 < $SCRIPT_DIRECTORY/j2sdk-1_4_2-use-lesstif.patch
fi                                                      &&
export ALT_BOOTDIR="$JAVA_HOME"				&&
export ALT_MOZILLA_PATH=$SOURCE_DIRECTORY		&&
export HOTSPOT_BUILD_JOBS=$MAKE_NJOBS                   &&
export ALT_DEVTOOLS_PATH="/usr/bin"			&&
export ALT_GCC32_COMPILER_PATH="/usr"                   &&
export MILESTONE="SMGL"                                 &&
export BUILD_NUMBER="$(date +%Y%m%d%H%M)"               &&
export ALT_CACERTS_FILE=${ALT_BOOTDIR}/jre/lib/security/cacerts	&&
export DEV_ONLY=true                                    &&
unset  JAVA_HOME                                        &&
unset  CLASSPATH                                        &&
export OTHER_CFLAGS=${CFLAGS}                           &&
unset  CFLAGS                                           &&
unset  LDFLAGS                                          &&
### This changes for each system so is left out of the patch
for i in hotspot/build/linux/makefiles/gcc.make \
	hotspot/build/solaris/makefiles/gcc.make \
	j2se/make/sun/image/generic/Makefile
do
        sedit "s:\-O3:$OTHER_CFLAGS \-fomit\-frame\-pointer \-s:g" $i
done                                                    &&
### replace 1.1.3 zlib due to security flaw
cd $SOURCE_DIRECTORY/j2se/src/share/native/java/util/zip  &&
rm -rf zlib-1.1.3                                       &&
unpack $SOURCE4 ${MD5[3]}                               &&
cd zlib-${ZLIB_VERSION}	                                &&
mv adler32.c zadler32.c	                                &&
mv crc32.c zcrc32.c                                     &&
cd $SOURCE_DIRECTORY/j2se/make/java/zip/                &&
sedit "s:1.1.3:${ZLIB_VERSION}:"  Makefile              &&
cd $SOURCE_DIRECTORY/control/make                       &&
devoke_installwatch                                     &&
export MAKE_NJOBS=1                                     &&
unset LD_LIBRARY_PATH                                   &&
make
