<pre> add "ipv4.dns 1.1.1.1" to your network resolution so that it is persistent </pre>

Verify by running this command: `OUT=$( cat /etc/resolv.conf | grep 1.1.1.1 ) && [[ $OUT == ipv4.dns* ]] && echo "Awesome Job" || echo "Try Again"`{{execute}}



