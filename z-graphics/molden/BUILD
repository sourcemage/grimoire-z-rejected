if echo $OPTS| grep -q "with-gl"; then 
  patch -p0  <  $SCRIPT_DIRECTORY/makefile.ogl.patch
else
  patch -p0  <  $SCRIPT_DIRECTORY/makefile.patch
fi                                            &&

make                                          &&
if echo $OPTS| grep -q "with-gl"; then 
  make  moldenogl
fi
