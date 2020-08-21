<pre> anacron -f </pre>

<pre> /var/spool/anacron </pre>

<pre> 
cp /home/user/uptime.sh /etc/cron.daily/uptimelog
</pre>

<pre>
vi /etc/cron.d/uptimelog
*/5 * * * * root /home/user/uptime.sh
</pre>