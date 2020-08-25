<pre> add "140.82.118.4 github.com" to your file based host entry </pre>
verify with: `  
OUT=$( cat /etc/hosts | grep github ) && [[ $OUT == 140.82.118.4* ]] && echo "Awesome Job" || echo "Try Again"`{{execute}}

<pre> using nmcli add a `secondary interface` named `my-connection` on device `eth5` and set that interface to have a static IP of `172.17.0.20` with a network mask of `255.255.255.0` using a gateway of `172.17.0.254` and a name server of `172.17.0.254` </pre>

verify with: `DNS=$( nmcli con show my-connection | awk '/ipv4.dns:/ {print $2}' ); ADDR=$(nmcli con show my-connection | awk '/ipv4.addresses:/ {print $2}' );  GW=$( nmcli con show my-connection | awk '/ipv4.gateway:/ {print $2}' ); [[ $GW == 172.17.0.254 ]] && [[ $ADDR == 172.17.0.20/24 ]] && [[ $DNS == 172.17.0.254 ]] && echo "Awesome Job" || echo "Try again"`{{execute}}

>> Q1: What directory contains the interface file to statically set IPs, gateways, etc.?<<
=== /etc/sysconfig/network-scripts





