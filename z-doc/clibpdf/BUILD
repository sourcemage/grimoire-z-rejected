cd source                                   &&
cp Makefile.Linux Makefile                  &&
sedit  "s/libcpdf.sl/libcpdf.so/"  Makefile &&
sedit  "s/\(CFLAGS=-Wall -g -DLinux\)/\1 $CFLAGS/" Makefile && 
sedit  "s/\(LD_FLAGS=\)/\1 $LDFLAGS/"     Makefile          &&
sedit  "s/\/usr\/local/\/usr/"            Makefile          &&
sedit  "s/\/local\/ClibPDF/\/usr/"        Makefile          &&
sedit  's/mkdir -p $(BINDIR)\/lib//'      Makefile          &&
sedit  's/mkdir -p $(BINDIR)\/include//'  Makefile          &&
make                        &&
