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
    ${SCRIPT_DIRECTORY}/setiathome  /usr/bin    &&
  install  -o  nobody  -g  nogroup  -m  0755    \
    ${SCRIPT_DIRECTORY}/seti-setup  /usr/bin    &&
  mkdir  -p /usr/doc/${SPELL}                   &&

echo  "To join the Source Mage SETI@Home team, go to the following URL:"  \
  >  /usr/doc/${SPELL}/SourceMageTeam
echo  "http://setiathome.ssl.berkeley.edu/stats/team/team_157228.html"    \
  >>  /usr/doc/${SPELL}/SourceMageTeam
)  >  ${C_FIFO}  2>&1
