case $SSH1 in
	y|Y) OPTS="$OPTS  --with-ssh-agent1-compat"
	;;
	*)   OPTS="$OPTS  --without-ssh-agent1-compat"
	;;
esac
  
case $XFREE86 in
	y|Y) OPTS="$OPTS -with-x"
	;;
esac

./configure  --prefix=/usr          \
             --sysconfdir=/etc/ssh2 \
             --enable-efence        \
             $OPTS                  &&
make                                &&
