(

  if echo $OPTS| grep -q "with-gl"; then 
    patch -p0  <  $SCRIPT_DIRECTORY/makefile.ogl.patch
  else
    patch -p0  <  $SCRIPT_DIRECTORY/makefile.patch
  fi                                            &&

  make                                          &&
  if echo $OPTS| grep -q "with-gl"; then 
    make  moldenogl
  fi                                            &&
  prepare_install                               &&
  install  -m  755  molden  /usr/bin            &&
  if echo $OPTS| grep -q "with-gl"; then 
    install  -m  755  moldenogl  /usr/bin
  fi                                            &&
  mkdir  -p  /usr/doc/molden                    &&
  cd  /usr/doc/molden                           &&
  gzip  -d  $SOURCE_DIRECTORY/doc/figures.ps.Z  &&
  gzip  -d  $SOURCE_DIRECTORY/doc/manual.ps.Z   &&
  gzip  -d  $SOURCE_DIRECTORY/doc/manual.txt.Z

) > $C_FIFO 2>&1
