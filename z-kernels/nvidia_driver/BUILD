local  KVER                 &&
KVER=$(get_kernel_version)  &&

pushd  $SOURCE_DIRECTORY/usr/src/nv                  &&
make  KERNEL_MODLIB=$INSTALL_ROOT/lib/modules/$KVER  \
      KERNEL_UNAME=$KVER                             \
      SYSSRC=$INSTALL_ROOT/lib/modules/$KVER/source  \
      -f Makefile.kbuild module                      &&
popd
