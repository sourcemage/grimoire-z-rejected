(

  . $SCRIPT_DIRECTORY/../java-functions
  
  prepare_install								&&
  
  extract_sun_single_jar  jdbc2_0-stdext jdbc2_0-stdext  /var/spool/sorcery/jdbc2_0-stdext.jar &&
  register_sun_jar  jdbc2_0-stdext/jdbc2_0-stdext.jar  jdbc2_0-stdext.jar
    
) > $C_FIFO 2>&1
