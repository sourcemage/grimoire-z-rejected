# This was installed for 10p3, perhaps can be removed for future release.
# It's about bad calls to memcpy with overlapping memory.
# See https://bugzilla.redhat.com/show_bug.cgi?id=638477
if [[ "${SMGL_COMPAT_ARCHS[1]}" != "x86_64" && "${SMGL_COMPAT_ARCHS[1]}" != "em64t" ]]; then
 if [[ "$FLASH_MEMCPY_HACK" == y ]]; then
   sh "$SCRIPT_DIRECTORY/memcpy-to-memmove.sh" libflashplayer.so &&
   chmod a+rx libflashplayer.so
 fi
fi
