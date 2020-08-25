>>Q1: Which file determines the order of preference for DNS (filebased vs externel) <<
( ) /etc/hosts.allow
(*) /etc/nsswitch.conf
( ) /etc/resolv.conf
( ) /etc/sysconfigs.network-scripts


>>Q2: What is the default order of preference for DNS? <<
(*) files dns hostname
( ) hostname files dns
( ) dns hostname files
( ) hostname dns files


>>Q3: Which command shows TCP ports on the system that are listening for connections and view ports that have established connections? (installed via the iproute package)<<
( ) top
(*) ss -tan
( ) ip -s link show etho
( ) nmcli dev status

<pre> Set up an interface connection that is only available to a single new user `mary`. add mary as a user on the machine, set your my-connection to not `autoconnect` and set this connection to only be visable by mary </pre>

nmcli con mod id my-connection connection.autoconnect no
nmcli con mod id my-connection connection.permissions mary

verify with: `AUTO=$( nmcli con show my-connection | awk '/connection.autoconnect:/ {print $2}' ); USER=$(nmcli con show my-connection | awk '/connection.permissions:/ {print $2}' ); [[ $AUTO == no ]] && [[ $USER == user:mary ]] && echo "Awesome Job" || echo "Try Again"`{{execute}}
