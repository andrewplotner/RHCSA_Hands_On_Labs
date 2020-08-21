<pre> add "ipv4.dns 1.1.1.1" to your network resolution so that it is persistent </pre>

Verify by running this command: `OUT=$( cat /etc/resolv.conf | grep 1.1.1.1 ) && [[ $OUT == ipv4.dns* ]] && echo "Awesome Job" || IN=$( cat /etc/sysconfig/network-scripts/ifcfg-ens3 | grep DNS1 | cut -d= -f2 ) && [[ $IN == "1.1.1.1" ]] && echo "Awesome Job" ||  echo "Try Again"`{{execute}}



