if  [  "$SSH1"  ==  "y"  ]
then
  OPTS="$OPTS  --with-ssh-agent1-compat"
else
  OPTS="$OPTS  --without-ssh-agent1-compat"
fi  &&

if  [  "$XFREE86"  ==  "y"  ]
then
  OPTS="$OPTS  --with-x"
fi  &&

./configure  --prefix=/usr          \
             --sysconfdir=/etc/ssh2 \
             --enable-efence        \
             $OPTS                  &&
make
