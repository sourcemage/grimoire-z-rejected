(

  bzip2  -cd  $SCRIPT_DIRECTORY/${PATCH_FILE}.bz2 |  \
  sed    -e "s|INSTALL_RPM|${INSTALL_RPM}|"       |  \
  patch  -b -p0                                      &&
  prepare_install                                    &&
  mkdir  -p                /opt                      &&
  cp     -drv  opt/sybase  /opt

) > $C_FIFO 2>&1
