cd $SOURCE_DIRECTORY &&
cp -dR --parents lib/* ${INSTALL_ROOT}/ &&
cd $INSTALL_ROOT/lib/modules/fglrx/build_mod &&
if [ "$(installed_version linux)" == "2.6.10" ]
then
  patch -p0 <$SCRIPT_DIRECTORY/2.6.10-fix.patch
fi &&
sh ./make.sh &&
if [ "${ATI_DRIVER_QT}" == "y" ]
then
  cd $SOURCE_DIRECTORY/fglpanel &&
  patch -p0 < ${SCRIPT_DIRECTORY}/smgl.qt.patch &&
  make
fi
