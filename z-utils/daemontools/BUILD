cd "${SPELL}-${VERSION}"  &&

pwd                     >  src/home     &&
echo  "gcc ${CFLAGS}"   >  src/conf-cc  &&
echo  "gcc ${LDFLAGS}"  >  src/conf-ld  &&

patch  -p0  <  "${SCRIPT_DIRECTORY}/0.76-errno.patch"  &&

cd  src  &&

sed  -i  -e  's@/command/svc@/usr/bin/svc@'  svscanboot.sh  &&

make
