(
  prepare_install                     &&
  cp -r doc lib man /usr/      	      &&
  cp bin/lisp /usr/lib/cmucl          &&
  cp $SCRIPT_DIRECTORY/cmucl /usr/bin &&
  ln -s /usr/bin/cmucl /usr/bin/lisp  &&
  if [ ! -s /usr/lib/cmucl/lib/site-init.lisp ]; then
    sed -e s/Unknown/`hostname -s`/ -e s/Site\ name\ not\ initialized/`hostname`/ /usr/lib/cmucl/lib/generic-site.lisp > /usr/lib/cmucl/lib/site-init.lisp
  fi
) > $C_FIFO 2>&1
