<pre> yum install firewalld -y</pre>
<pre>systemctl start firewalld</pre>
<pre>systemctl enable firewalld</pre>
<pre>firewall-cmd --list-all</pre>
<pre> firewall-cmd --permanent --zone=public --add-port=80/tcp</pre>
<pre>firewall-cmd --reload</pre>

