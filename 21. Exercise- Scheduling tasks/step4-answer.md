<pre> 
vim /etc/chrony.conf
# Use public servers from the pool.ntp.org project.
# Please consider joining the pool (http://www.pool.ntp.org/join.html).
pool ntp.ubuntu.com 		iburst maxsources 4
pool 0.ubuntu.pool.ntp.org	ibutst maxsources 1
pool 1.ubuntu.pool.ntp.org	ibutst maxsources 1
pool 2.ubuntu.pool.ntp.org	ibutst maxsources 2

</pre>

<pre> chronyc sources -v </pre>