(

  # Stupid bash script uses the wrong variable...
  sedit '133,140s%ln -s $prefix/$oo_version%ln -sf $prefix/$oo_home%' install &&

  # It also expects a "bin" directory at the same level as the application
  # installation directory, which isn't allowed by the FHS.
  sedit '132,140s%$prefix/bin%/usr/bin%' install &&

  prepare_install &&

  ./install  --prefix=/usr/lib 

) > $C_FIFO 2>&1
