(
 cd $BUILD_DIRECTORY/gaim-*			 &&
  ./configure  --build=$BUILD                     \
	       --prefix=/usr                      \
               --sysconfdir=/etc                  \
               --localstatedir=/var               \
	       --disable-perl			  \
               $OPTS                              &&
  make                                            &&
  prepare_install				  &&
  make install                                    

# if  spell_installed  gpgme ;  then
#    cd plugins/gaim-e/           &&
#    sedit  "s:INSTALL_PATH=:INSTALL_PATH=/usr/lib/gaim:"  Makefile  &&
#    make                         &&
#    make install                 &&
#    cd ../..
#  fi


) > $C_FIFO 2>&1
