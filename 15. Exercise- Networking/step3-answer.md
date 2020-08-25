<pre> echo "140.82.118.4 github.com" >> /etc/hosts </pre>


nmcli con add type ethernet con-name "my-connection" ifname "eth5"\
    to verify run `nmcli con show my-connection` and look for the interface-name
nmcli con mod id my-connection  ipv4.addresses "172.17.0.20/24" ipv4.gateway "172.17.0.254"
nmcli con mod id my-connection +ipv4.dns 172.7.0.254

nmcli con down my-connection ; nmcli con up my-connection
**NOTE** These will fail and that is alright! if they are successful they may break our connection to the box, recieving errors that say "this is not an active connection" means that your up command was right and would work on an active connection. recieving an error "... mismatched interface name" is also good, it means the command was right but our stated interface of "eth5" doesnt match up with the named interface on the box. 




