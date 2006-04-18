if `echo ${OPTS} | grep -q ssl` ;  then
  if `echo ${OPTS} | grep -q pam` 
  then  ./build  DEBUG="$CFLAGS"  NOSSL=unix  SSLCERTS=/etc/ssl/certs  SSLINCLUDE=/usr/include/openssl  SSLLIB=/usr/lib  lnp
  else  ./build  DEBUG="$CFLAGS"  NOSSL=unix  SSLCERTS=/etc/ssl/certs  SSLINCLUDE=/usr/include/openssl  SSLLIB=/usr/lib  slx
  fi  
else
  if  `echo ${OPTS} | grep -q pam`
  then  ./build  DEBUG="$CFLAGS"  lnp
  else  ./build  DEBUG="$CFLAGS"  slx
  fi  
fi
