if  !  echo  $PATH  |  grep  -q  "/usr/X11R6/bin"  ;  then
  export PATH=$PATH:/usr/X11R6/bin
fi  &&

   MESA_FIX="s/\$(TOP)\/..\/lib\/libMesa/\/usr\/X11R6\/lib\/lib/"
SYMBOL_LIBS="-L/usr/X11R6/lib,-lX11,-lGL,-lGLU,-lXmu,-lXi"
 SYMBOL_FIX="s:,libglut.so.3:,libglut.so.3,$SYMBOL_LIBS:"
 CFLAGS_FIX="s/-O2 -m486/$CFLAGS/"

cp     Glut.cf  Glut.cf.bak                                   &&
sed    $MESA_FIX < linux/Glut.cf > Glut.cf                    &&
cp  /usr/X11R6/lib/X11/config/*  .                            &&
imake  -DUseInstalled -I/usr/X11R6/lib/X11/config -DTOPDIR=.  &&
imake  -a                                                     &&
cp     lib/glut/Makefile lib/glut/Makefile.bak                &&
sed    "$CFLAGS_FIX"  <     linux/Makefile                    |
sed    "$MESA_FIX"                                            |
sed    "$SYMBOL_FIX"  >  lib/glut/Makefile                    &&
cd     lib/glut                                               &&
make
