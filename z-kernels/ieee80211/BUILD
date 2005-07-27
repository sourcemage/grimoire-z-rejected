if [[ $(get_sorcery_kernel_config CONFIG_IEEE80211) == "y" ||
      $(get_sorcery_kernel_config CONFIG_IEEE80211) == "m" ]]
then
	message "${MESSAGE_COLOR}Kernel $(get_kernel_version) already has the subsystem built in, not building anything today${DEFAULT_COLOR}"
else
	make KVER=$(get_kernel_version)
fi
