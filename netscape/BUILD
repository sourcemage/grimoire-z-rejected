(
    [ "$INSTALL_DIRECTORY" != "" ]                 &&
    mkdir -p $INSTALL_DIRECTORY/java/classes       &&
    cp       *.jar $INSTALL_DIRECTORY/java/classes &&
    cp       vreg  $INSTALL_DIRECTORY              &&
    for S in *.nif; do
    	gzip -dc $S | (cd $INSTALL_DIRECTORY; tar -xf -)
    done                                           &&
    chown -R root:root $INSTALL_DIRECTORY          &&
    echo "Navigator,4.79.0.20011017,$INSTALL_DIRECTORY" > /tmp/infile.$$   &&
    ./vreg $INSTALL_DIRECTORY/registry /tmp/infile.$$                      &&
    rm /tmp/infile.$$                              &&
    ln -fs /usr/lib/libstdc++-*libc6.2-2*.so $INSTALL_DIRECTORY/libstdc++-libc6.1-1.so.2              &&
    touch /usr/bin/netscape                        &&
    chmod 755 /usr/bin/netscape                    &&
    cat >/usr/bin/netscape <<EOF
#! /bin/sh

MOZILLA_HOME=$INSTALL_DIRECTORY
export MOZILLA_HOME
LD_LIBRARY_PATH=\$MOZILLA_HOME:\$LD_LIBRARY_PATH \$MOZILLA_HOME/netscape
EOF

)
