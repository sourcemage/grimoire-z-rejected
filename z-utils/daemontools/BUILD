  cd $SPELL-$VERSION

  patch -p1 < $SCRIPT_DIRECTORY/daemontools-errno.patch
  sedit 's/\/usr\/local/${INSTALL_ROOT}\/usr/g' package/upgrade
  sedit 's/\/command/${INSTALL_ROOT}\/command/' package/upgrade
  sedit 's/ln -s $parent/install $parent/' package/upgrade
  echo > package/boot.inittab

  ./package/install
