(
  sedit "s:/usr/local/f-prot:/usr/lib/f-prot:" f-prot.sh		&&
  sedit "s:/usr/local/f-prot:/usr/lib/f-prot:" check-updates.sh		&&

  prepare_install                                    			&&

  cp man8/* /usr/man/man8						&&

  mkdir /usr/lib/f-prot 1>/dev/null 2>&1				&&
  mkdir /usr/doc/f-prot 1>/dev/null 2>&1				&&

  cp CHANGES   /usr/doc/f-prot						&&
  cp LICENSE   /usr/doc/f-prot						&&
  cp README    /usr/doc/f-prot						&&
  cp f-prot    /usr/lib/f-prot						&&
  cp checksum  /usr/lib/f-prot						&&
  ln -s	       /usr/lib/f-prot/checksum /usr/bin			&&
  cp *.DEF     /usr/lib/f-prot						&&
  cp *.TX0     /usr/lib/f-prot						&&
  cp *.sh      /usr/sbin				
  
) > $C_FIFO 2>&1
