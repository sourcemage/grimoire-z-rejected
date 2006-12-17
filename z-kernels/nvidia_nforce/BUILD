( 
  sedit  "s/\$(shell uname -r)/$(get_kernel_version)/"  Makefile

  sedit  "s/: gcc-check/:/"  Makefile

  make  IGNORE_CC_MISMATCH=1

  prepare_install              
  make  IGNORE_CC_MISMATCH=1  install

) > $C_FIFO 2>&1
