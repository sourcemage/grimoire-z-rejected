(

  prepare_install                       &&
  mkdir  -p  /usr/share/fonts/truetype  &&
  cd lidostfce_pc &&
  cp *.ttf  /usr/share/fonts/truetype  &&
  cd ../lidostf_pc &&
  cp  *.ttf  /usr/share/fonts/truetype  &&
  if  [  -d  /etc/fonts/  ];  then
    if  !  [  -e  /etc/fonts/local.conf  ];  then
      cp  local.conf  /etc/fonts
    fi
  fi

) > $C_FIFO 2>&1
