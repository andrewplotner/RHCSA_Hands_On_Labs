<pre> vim /etc/bashrc </pre>
**<pre>
		if [ $UID -gt 199 ] && [ "`id -gn`" = "`id -un`" ]; then
		    umask 066
		else
		    umask 022
		fi
</pre>**

<pre> vim /etc/profile </pre>
**<pre>		
		if [ $UID -gt 199 ] && [ "`id -gn`" = "`id -un`" ]; then
		    umask 066
		else
		    umask 022
		fi
</pre>**


