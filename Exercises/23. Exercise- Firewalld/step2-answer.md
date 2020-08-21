<pre> firewall-cmd --permanent --zone=public --remove-port=80/tcp</pre>
<pre>firewall-cmd --permanent --zone=internal --add-port=80/tcp</pre>
<pre>firewall-cmd --permanent --zone=internal --add-source=192.168.1.55</pre>
<pre>firewall-cmd --reload</pre>


