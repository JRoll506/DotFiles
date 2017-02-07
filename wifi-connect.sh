rfkill unblock wifi
ip link set wls1 up
wpa_supplicant -D n180211,wext -i wls1 -c <(wpa_passphrase "$1" "$2") &
dhcpcd wls1
