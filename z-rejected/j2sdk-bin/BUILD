(

  prepare_install                       &&
  cp   -r  $SOURCE_DIRECTORY  /usr/lib  &&
  cd  /usr/lib/j2sdk${VERSION%-*}/bin       &&
  for  FILE  in  `ls`;  do
    if  [  -f  $FILE  ];  then
      ln  -sf  /usr/lib/j2sdk${VERSION%-*}/bin/$FILE  /usr/bin
    fi
  done

) > $C_FIFO 2>&1
