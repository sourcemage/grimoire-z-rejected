(

  . $SCRIPT_DIRECTORY/../java-functions                            &&
  prepare_install                                                  &&
  extract_sun_src  ${SPELL} ${SPELL}-${VERSION} $SOURCE_DIRECTORY  &&
  mkdir -p ${INSTALL_ROOT}/etc/profile.d/ &&
  install -m 0644 $SCRIPT_DIRECTORY/java_xml_pack.sh ${INSTALL_ROOT}/etc/profile.d/  
    
) > $C_FIFO 2>&1 
