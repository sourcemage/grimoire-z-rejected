(

  . $SCRIPT_DIRECTORY/../java-functions
  
  prepare_install 							&&
  
  extract_sun_src   ${SPELL} ${SPELL}-${VERSION}  $SOURCE_DIRECTORY	&&
  register_sun_jar  ${SPELL}-${VERSION}/activation.jar  activation.jar
  
) > $C_FIFO 2>&1  
