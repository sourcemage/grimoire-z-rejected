(

  . $SCRIPT_DIRECTORY/../java-functions
  
  prepare_install							&&
  
  extract_sun_src   ${SPELL} ${SPELL}-${VERSION}  $SOURCE_DIRECTORY	&&
  register_sun_jar  ${SPELL}-${VERSION}/jta.jar  jta.jar
  
) > $C_FIFO 2>&1
