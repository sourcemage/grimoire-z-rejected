bzcat  $SCRIPT_DIRECTORY/Makefile.diff.bz2  |  patch -p0  &&

export CFLAGS="-DI386_ASSEM -DPENTIUM_OPT -DREAL_IS_FLOAT -DLINUX \
                        -DREAD_MMAP -DOSS -DTERM_CONTROL \
                        -Wall \
                        -fomit-frame-pointer -funroll-all-loops \
                        -finline-functions -ffast-math  \
                        $CFLAGS"  &&
make  PREFIX=/usr  linux
