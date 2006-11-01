cd $SOURCE_DIRECTORY/lib/modules/fglrx/build_mod  &&
sh ./make.sh                                      &&
if [[ "${ATI_DRIVER_QT}" == "y" ]]
then
  cd $SOURCE_DIRECTORY/fglpanel                   &&
  patch -p0 < ${SCRIPT_DIRECTORY}/smgl.qt.patch   &&
  make
fi
