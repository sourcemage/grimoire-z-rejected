(

  # Stupid bash script uses the wrong variable...
  sedit '133,140s%ln -s $prefix/$oo_version%ln -sf $prefix/$oo_home%' install &&

  # It also expects a "bin" directory at the same level as the application
  # installation directory, which isn't allowed by the FHS.
  sedit '132,140s%$prefix/bin%/usr/bin%' install &&

  # And it attempts to create a symlink for the same component three times...
  sedit '139s%swriter%spadmin%g' install &&
  sedit '140s%swriter%sweb%g' install &&

  # And you still want to run this program?


  
  prepare_install &&

  # For some reason, the setup binary doesn't do anything if LD_PRELOAD is
  # set. This means we can't use installwatch at all! :o(
  OLD_LD_PRELOAD=$LD_PRELOAD    &&
  unset           LD_PRELOAD    &&
  ./install  --prefix=/usr/lib  &&
  LD_PRELOAD=$OLD_LD_PRELOAD    &&
  unset       OLD_LD_PRELOAD

) > $C_FIFO 2>&1
