(

    	./install.sh		&&
    	cd apache_1.3.27	&&
	make			&&
	prepare_install
	make install		

) > $C_FIFO 2>&1  &&

(

  ln -s /usr/local/sbin/apachectl /usr/sbin/apachectl

)
