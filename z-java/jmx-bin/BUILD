(

  . $SCRIPT_DIRECTORY/../java-functions
  
  prepare_install 								&&
  
  extract_sun_src   ${PKG_NAME} ${PKG_NAME}-${VERSION}  $SOURCE_DIRECTORY	&&
  register_sun_jar  ${SPELL}-${VERSION}/lib/jmxri.jar     jmxri.jar		&&
  register_sun_jar  ${SPELL}-${VERSION}/lib/jmxtools.jar  jmxtools.jar  
) > $C_FIFO 2>&1  
