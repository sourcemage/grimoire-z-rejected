(
	sedit  "s/\/usr\/local\/Acrobat5/\/usr\/lib\/acroread/"  INSTALL  &&
	prepare_install     &&
	./INSTALL           &&
	ln  -sf  /usr/lib/acroread/bin/acroread  /usr/bin/acroread  &&

	if spell_installed "mozilla"; then
		if query "Do you wish to install the mozilla plugin for viewing pdf documents in mozilla?" n
		then
			cp /usr/lib/acroread/Browsers/intellinux/nppdf.so /usr/lib/mozilla/plugins/
			
		fi
	fi
)
