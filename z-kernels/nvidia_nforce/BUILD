( 

  # A surprising number of module makefiles attempt to figure out the kernel
  # version in every way but the correct one - which is to actually look at
  # the sources being compiled against!
       KVERSION=` head -1 /lib/modules/$(uname -r)/build/Makefile |           sed 's/.*=//'`
    KPATCHLEVEL=` head -2 /lib/modules/$(uname -r)/build/Makefile | tail -1 | sed 's/.*=//'`
      KSUBLEVEL=` head -3 /lib/modules/$(uname -r)/build/Makefile | tail -1 | sed 's/.*=//'`
  KEXTRAVERSION=` head -4 /lib/modules/$(uname -r)/build/Makefile | tail -1 | sed 's/.*=//'`

  KERNEL=`echo "${KVERSION}.${KPATCHLEVEL}.${KSUBLEVEL}${KEXTRAVERSION}" |
          sed 's/ //g'`

  sedit  "s/\$(shell uname -r)/$KERNEL/"  Makefile

  sedit  "s/: gcc-check/:/"  Makefile

  make  IGNORE_CC_MISMATCH=1

  prepare_install              
  make  IGNORE_CC_MISMATCH=1  install

) > $C_FIFO 2>&1
