(
	#patch to make the winex script - old, from 3.1
	#patch -p1 < $SCRIPT_DIRECTORY/winex.patch

	./configure	--prefix=/usr/lib/transgaming/winex	\
			--sysconfdir=/etc		\
			--localstatedir=/var		\
			$OPTS				&&
	make depend					&&
	make						&&

	prepare_install					&&
	make install					&&

	cp tools/winex /usr/bin/			&&

#	if [ ! -f /usr/bin/winex ]; then
#		ln -s /opt/winex/bin/wine /usr/bin/winex
#	fi
	ldconfig
) > $C_FIFO 2>&1
