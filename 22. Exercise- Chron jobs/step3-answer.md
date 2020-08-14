<pre> atrm (job number)</pre>

<pre> 
mkdir /home/user ; vi /home/user/uptime.sh
(in vi editor)
logger "$(uptime)"
</pre>
<pre> chmod +x /home/user/uptime.sh </pre>

<pre>
vi /etc/anacrontab
5	0	uptimelog	/home/user/uptime.sh
</pre>