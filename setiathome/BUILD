(

  S_DIR="/opt/setiathome"                                    &&
  install  -d  -o  nobody  -g  nogroup  -m  0755  $S_DIR           &&
  install  -o  nobody  -g  nogroup  -m  0644  README*  $S_DIR/     &&
  install  -o  nobody  -g  nogroup  -m  6755  xsetiathome  $S_DIR  &&
  install  -o  nobody  -g  nogroup  -m  6755  setiathome  $S_DIR   &&
  install  -o  nobody  -g  nogroup  -m  0755  $SCRIPT_DIRECTORY/setiathome  /usr/bin
  install  -o  nobody  -g  nogroup  -m  0755  $SCRIPT_DIRECTORY/xsetiathome  /usr/bin

)  >  $C_FIFO  2>&1
