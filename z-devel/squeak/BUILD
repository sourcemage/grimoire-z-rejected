CFLAGS="${CFLAGS/-DPIC/}"  &&
CFLAGS="${CFLAGS/-fPIC/}"  &&

cd  $SOURCE_DIRECTORY      &&
mkdir  bld                 &&
cd     bld                 &&
../platforms/unix/config/configure  --prefix=/usr  &&
make
