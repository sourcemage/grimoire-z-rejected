(

  case $OPENGL in
    y|Y)  patch -p0  <  $SCRIPT_DIRECTORY/makefile.ogl.patch
          ;;
      *)  patch -p0  <  $SCRIPT_DIRECTORY/makefile.patch
          ;;
  esac

  make                                          &&
  case $OPENGL in
    y|Y) make  moldenogl
         ;;
  esac
  prepare_install                               &&
  install  -m  755  molden  /usr/bin             &&
  case  $OPENGL in
    y|Y)  install  -m  755  moldenogl  /usr/bin
          ;;
      *)  ;;
  esac
  mkdir  -p  /usr/doc/molden                    &&
  cd  /usr/doc/molden                           &&
  gzip  -d  $SOURCE_DIRECTORY/doc/figures.ps.Z  &&
  gzip  -d  $SOURCE_DIRECTORY/doc/manual.ps.Z   &&
  gzip  -d  $SOURCE_DIRECTORY/doc/manual.txt.Z

) > $C_FIFO 2>&1
