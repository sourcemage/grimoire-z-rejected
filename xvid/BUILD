(

  cd  build/generic          &&
  make -f Makefile.linuxx86  &&
  prepare_install            &&
  (
    cp  libxvidcore.*  /usr/lib       &&
    cd  ../../src                     &&
    cp  divx4.h xvid.h  /usr/include
  )

) > $C_FIFO 2>&1
