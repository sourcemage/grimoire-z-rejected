(

  prepare_install                              &&
  mkdir  -p  /usr/share/${SPELL}               &&
  mkdir  -p  /usr/share/${SPELL}/dcom          &&
  mkdir  -p  /usr/share/${SPELL}/fonts         &&
  mkdir  -p  /usr/share/${SPELL}/install       &&
  mkdir  -p  /usr/share/${SPELL}/log           &&
  cp  winetools  /usr/share/${SPELL}           &&
  ln  -sf  /usr/share/${SPELL}/${SPELL/-bin/}  \
           /usr/bin/wt

)  >  ${C_FIFO}  2>&1
