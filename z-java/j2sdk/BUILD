(
cd $SOURCE_DIRECTORY					&&
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
unset MAKE_NJOBS                                        &&
unset LD_LIBRARY_PATH                                   &&
make                                                    &&

### check the compiled binary can initialise
if $SOURCE_DIRECTORY/control/build/linux-i?86/j2sdk-image/bin/java -version >& /dev/null;
then
 prepare_install                                        &&
 cd $SOURCE_DIRECTORY/control/build/linux-i?86		&&
 install -d /usr/java					&&
 cp -av  j2sdk-image /usr/java/$SPELL-$VERSION-${BUILD_NUMBER}	&&
 cd /usr/java                                           &&
 for i in *;
 do  [ "$i" = "$SPELL-$VERSION-${BUILD_NUMBER}" ] ||  rm -rf $i;
 done                                                   &&
 ### I want to track the 30+ MB we just installed and this turns installwatch back on
 invoke_installwatch                                    &&
 ln -snf $SPELL-$VERSION-${BUILD_NUMBER} j2sdk              &&
 ### This function is for when installwatch can't be run automatically
 track_manual $(find /usr/java/$SPELL-$VERSION-${BUILD_NUMBER} -iname \*) &&
 rm -rf /opt/java/                                      &&
 mkdir -p /etc/.java					&&
 chmod a+w /etc/.java					&&
 POOPY=/usr/lib/mozilla/plugins/                        &&
 mkdir -p $POOPY                                        &&
 ### Second one is needed by konqueror
 ln -sf /usr/java/j2sdk/jre/plugin/i386/ns610/libjavaplugin_oji.so $POOPY/libjavaplugin_oji.so &&
 ln -sf /usr/java/j2sdk/jre/plugin/i386/ns4/libjavaplugin.so $POOPY/libjavaplugin.so           &&
 ### now remove j2sdk-bin bootstrap compiler if installed
 if    spell_installed      j2sdk-bin
  then  dispel  j2sdk-bin &&
        sedit "s/BOOTSTRAP\=spell/BOOTSTRAP\=system/g" $SPELL_CONFIG &&
        sedit "s/j2sdk\:j2sdk-bin\:on\:required\:\://g" $DEPENDS_STATUS
 fi                                                     
 mkdir -p ${INSTALL_ROOT}/etc/profile.d/ &&
 install -m 0644 $SCRIPT_DIRECTORY/java.sh ${INSTALL_ROOT}/etc/profile.d/
else message "${WARNING}SORRY, JAVA APPEARS TO HAVE FAILED BUILDING${DEFAULT_COLOR}" &&
     rm -rf /opt/java/                                       &&
     false
fi 
) > $C_FIFO  2>&1
