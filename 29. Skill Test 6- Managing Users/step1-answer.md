<pre> 
$ useradd LordHelix
$ useradd BirdJesus
$ useradd ATV
</pre>

<pre> 
$ groupadd Twitch
</<pre>

<pre> 
$ usermod -g wheel LordHelix
</pre>

<pre> 
$ usermod -aG Twitch LordHelix
$ usermod -aG Twitch BirdJesus
$ usermod -aG Twitch ATV
</<pre>

<pre>
$ usermod -L ATV
</pre>

<pre>
chage -E (MM/DD/YYYY) LordHelix
</pre>

<pre>
$ usermod -s /sbin/nologin 
$ chage -M 7 BirdJesus
</pre>

<pre>
$ usermod -s /sbin/nologin 
$ vi /etc/login.defs
		PASS_MAX_DAYS 180
    PASS_WARN_AGE 14
</pre>
