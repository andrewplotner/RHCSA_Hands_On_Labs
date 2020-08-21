OUT=$( cat /etc/resolv.conf | grep 1.1.1.1 ) && [[ $OUT == ipv4.dns* ]] && echo done
