(

  S_DIR="/usr/share/setiathome"

  prepare_install                               &&
  install  -d  -o  nobody  -g  nogroup  -m      \
    0755  ${S_DIR}                              &&
  install  -o  nobody  -g  nogroup  -m  0644    \
    README*  ${S_DIR}/                          &&
  # Not all versions have xsetiathome (SPARC, for example)
  if  [  -f  xsetiathome  ]
  then
    install  -o  nobody  -g  nogroup  -m  6755  \
      xsetiathome  ${S_DIR}                     &&
    install  -o  nobody  -g  nogroup  -m  0755  \
      ${SCRIPT_DIRECTORY}/xsetiathome  /usr/bin
  fi                                            &&
  install  -o  nobody  -g  nogroup  -m  6755    \
    setiathome  ${S_DIR}                        &&
  install  -o  nobody  -g  nogroup  -m  0755    \
    ${SCRIPT_DIRECTORY}/setiathome  /usr/bin

)  >  ${C_FIFO}  2>&1
