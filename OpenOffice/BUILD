(
#
cd ${SOURCE_DIRECTORY}/solenv/inc    &&
cp unxlngi3.mk unxlngi3.mk.orig      &&
sed -e "s:^CFLAGSOPT=.*:CFLAGSOPT=${CFLAGS}:g" \
unxlngi3.mk.orig > unxlngi3.mk       &&
cp unxlngi4.mk unxlngi4.mk.orig      &&
sed -e "s:^CFLAGSOPT=.*:CFLAGSOPT=${CFLAGS}:g" \
unxlngi4.mk.orig > unxlngi4.mk       &&
        cd $SOURCE_DIRECTORY         &&

#
rm -f moz/zipped/LINUXGCCI*.zip      &&
cd ${MOZ_PREFIX}/include/mozilla     &&
zip -r ${SOURCE_DIRECTORY}/moz/zipped/LINUXGCCIinc.zip *     &&
cd ${MOZ_PREFIX}/lib/mozilla         &&
zip -j ${SOURCE_DIRECTORY}/moz/zipped/LINUXGCCIlib.zip openoffice/lib*.a \
	libnspr4.so libxpcom.so      &&
cd ${SOURCE_DIRECTORY}/..            &&
mkdir -p mozilla/components mozilla/defaults/pref            &&
cd mozilla                           &&
for i in absyncsvc addrbook mork mozldap necko pref profile rdf strres \
	uconv ucvcn ucvibm ucvja ucvko ucvlatin ucvtw ucvtw2 \
	unicharutil uriloader vcard xpconnect
do
	cp -a ${MOZ_PREFIX}/lib/mozilla/components/lib${i}.so components
done                                 &&
for i in necko_dns xpcom_xpti xpcom_threads xpcom_io xpcom_ds \
	xpcom_components xpcom_base
do
	cp -a ${MOZ_PREFIX}/lib/mozilla/components/${i}.xpt components/
done                                 &&
for i in xpti # xptitemp
do
	cp -a ${MOZ_PREFIX}/lib/mozilla/components/${i}.dat components/
done                                 &&
cp -a ${MOZ_PREFIX}/lib/mozilla/defaults/pref/*.js defaults/pref/  &&
for i in mozjs msgbaseutil ldap50 nspr4 plc4 plds4 xpcom prldap50
do
	cp -a ${MOZ_PREFIX}/lib/mozilla/lib${i}.so .
done                                 &&
zip -r ${SOURCE_DIRECTORY}/moz/zipped/LINUXGCCIruntime.zip * &&
cd ..                                &&
rm -rf mozilla/                      &&

#  patch  -p0  <  $SOURCE_CACHE/$SOURCE2  &&
#  cd  ..                                 &&

	cd $SOURCE_DIRECTORY/config_office/ &&
	autoconf &&
	./configure --enable-gcc3 --with-jdk-home=${JAVA_HOME} \
		--with-lang=ENUS --with-x --with-stlport4-home=/usr \
               --prefix=/usr         \
               --sysconfdir=/etc     \
               --localstatedir=/var  \
               $OPTS                 &&

cd $SOURCE_DIRECTORY                                            &&
	mkdir -p solver/641/unxlngi4.pro/inc/                   &&
	touch solver/641/unxlngi4.pro/inc/minormkchanged.flg    &&
	mkdir -p solver/641/unxlngi4.pro/lib/                   &&
	cp -f /usr/lib/libstdc++.so.5* /usr/lib/libgcc_s.so* solver/641/unxlngi4.pro/lib/                                                       &&
	chmod +x solenv/bin/zipdep.pl                           &&

tcsh -c "source LinuxIntelEnv.Set; ./bootstrap"                 &&

tcsh -c "source LinuxIntelEnv.Set; dmake"                       &&

cd $SOURCE_DIRECTORY/instsetoo/unxlngi4.pro/01/normal           &&

cp install install.orig                                         &&
sed -e "s:oo_home=OpenOffice.org1.0:oo_home=openoffice:" install.orig > install &&
chmod +x install                                                &&

prepare_install                    &&

./install --prefix=/opt            &&
for appl in swriter scalc sdraw simpress smath soffice
do
rm -f /usr/bin/$appl
ln -sf /opt/openoffice/program/$appl /usr/bin/$appl
done 

)  >  $C_FIFO  2>&1
