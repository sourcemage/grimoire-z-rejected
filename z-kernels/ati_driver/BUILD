(
  cd $SOURCE_DIRECTORY                             &&
  cp -dR --parents lib/* ${INSTALL_ROOT}/             &&
  cd $INSTALL_ROOT/lib/modules/fglrx/build_mod     &&
# patch -p1 <$SCRIPT_DIRECTORY/fglrx-3.7.6-regparm.patch &&
# patch -p0 <$SCRIPT_DIRECTORY/amd.patch &&
  sh ./make.sh                                     &&
  cd $INSTALL_ROOT/lib/modules/fglrx/              &&
  sh ./make_install.sh                             &&
  cd $SOURCE_DIRECTORY                             &&
  cp --parents usr/include/GL/glxATI.h \
    ${INSTALL_ROOT}/                               &&
  cp -dR --parents usr/X11R6/include/* \
    ${INSTALL_ROOT}/                               &&
  cp -dR --parents usr/X11R6/lib/* ${INSTALL_ROOT}/   &&
  rm -f usr/share/doc/fglrx/LICENSE*               &&
  bunzip2 -c usr/X11R6/bin/fireglcontrol.qt3*bz2 > usr/X11R6/bin/fireglcontrol &&
  chmod +x usr/X11R6/bin/fireglcontrol             &&
  rm -f usr/X11R6/bin/fireglcontrol.qt*            &&
  cp -dR --parents usr/X11R6/bin/* ${INSTALL_ROOT}/   &&
  cp -dR --parents usr/share/applnk/* \
    ${INSTALL_ROOT}/                                  &&
  cp -dR --parents usr/share/pixmaps/* ${INSTALL_ROOT}/                    
) > $C_FIFO 2>&1
