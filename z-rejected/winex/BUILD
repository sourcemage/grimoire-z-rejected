(
patch -p1 < $SCRIPT_DIRECTORY/winex.patch	&&
	./configure	--prefix=/opt/winex	\
			--enable-opengl		\
			--sysconfdir=/etc	\
			--localstatedir=/var	\
			$OPTS			&&
	make depend				&&
	make					&&
	prepare_install				&&
	make install
) > $C_FIFO 2>&1
