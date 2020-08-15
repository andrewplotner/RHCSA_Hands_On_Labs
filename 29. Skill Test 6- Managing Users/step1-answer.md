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
