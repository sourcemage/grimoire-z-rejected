( 
  GL_DIR=${INSTALL_ROOT}/usr/include/GL/ &&	 
  NV_HEAD_DIR=${INSTALL_ROOT}/usr/share/doc/NVIDIA_GLX-1.0/include/GL && 
for i in gl.h glext.h glx.h glxtokens.h ;
do  cp -v ${NV_HEAD_DIR}/$i ${GL_DIR} ;	
done

) > $C_FIFO 2>&1
