(

  prepare_install                       &&
  cp   -r  $SOURCE_DIRECTORY  /usr/lib  &&
  cd  /usr/lib/j2sdk${VERSION%-*}/bin   &&
  for  FILE  in  `ls`;  do
    if  [  -f  $FILE  ];  then
      ln  -sf  /usr/lib/j2sdk${VERSION%-*}/bin/$FILE  /usr/bin
    fi
  done &&
  [ ! -d /usr/lib/mozilla/plugins ] || ln -sf /usr/lib/j2sdk1.4.1/jre/plugin/${SDIR:-i386}/mozilla/javaplugin_oji.so /usr/lib/mozilla/plugins/javaplugin_oji.so
  mkdir -p ${INSTALL_ROOT}/etc/profile.d/ &&
  install -m 0644 $SCRIPT_DIRECTORY/java.sh ${INSTALL_ROOT}/etc/profile.d/
) > $C_FIFO 2>&1
