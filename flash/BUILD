(
if spell_installed "Mozilla"
then
if  [  !  -d  /usr/lib/mozilla/plugins  ]
  then  mkdir  /usr/lib/mozilla/plugins
fi
fi
./flashplayer-installer &&
if [ -e /opt/gcc2/lib/libstdc++-3-libc6.2-2-2.10.0.so ]; then
  ln -sf /opt/gcc2/lib/libstdc++-3-libc6.2-2*.so /usr/lib/mozilla/plugins/libstdc++-libc6.2-2.so.3
elif [ -e /opt/gcc2/lib/libstdc++-3-libc6.3-2-2.10.0.so ]; then
  ln -sf /opt/gcc2/lib/libstdc++-3-libc6.3-2*.so /usr/lib/mozilla/plugins/libstdc++-libc6.2-2.so.3
else
 exit 1
fi
) > $C_FIFO 2>&1
