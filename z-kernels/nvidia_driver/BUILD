local  KVER                 &&
KVER=$(get_kernel_version)  &&

cd  $SOURCE_DIRECTORY/kernel                  &&
make  KERNEL_MODLIB=$INSTALL_ROOT/lib/modules/$KVER  \
      KERNEL_UNAME=$KVER                             \
      SYSSRC=$INSTALL_ROOT/lib/modules/$KVER/source  \
      -f Makefile module
