(

  cd $SOURCE_DIRECTORY/licq-*
  
  ./configure  --prefix=/usr                      \
               --sysconfdir=/etc                  \
               --localstatedir=/var               \
               $OPTS                              &&
  make                                            &&

  cd  $SOURCE_DIRECTORY/licq-*/plugins/console           &&
  ./configure  --prefix=/usr                      \
               --sysconfdir=/etc                  \
               --localstatedir=/var               &&
  make                                            &&

  if  spell_installed  qt-x11;  then

    cd  $SOURCE_DIRECTORY/licq-*/plugins/qt-gui &&
    ./configure  --prefix=/usr                    \
                 --sysconfdir=/etc                \
                 --localstatedir=/var             \
                 $OPTS                            &&
    make

  fi                                              &&
  prepare_install                                 &&
  cd  $SOURCE_DIRECTORY/licq-*                           &&
  make    install                                 &&
  cd  $SOURCE_DIRECTORY/licq-*/plugins/console           &&
  make    install                                 &&
  if  spell_installed  qt-x11;  then
    cd  $SOURCE_DIRECTORY/licq-*/plugins/qt-gui
    make    install
  fi

) > $C_FIFO 2>&1
