(

  if query "Do you want ssh1 compatability?" y; then
    OPTS="$OPTS  --with-ssh-agent1-compat"
  else
    OPTS="$OPTS  --without-ssh-agent1-compat"
  fi

  ./configure  --prefix=/usr          \
               --sysconfdir=/etc/ssh2 \
               --enable-efence        \
               $OPTS                  &&
  make                                &&
  prepare_install                     &&
  make    install

) > $C_FIFO 2>&1
