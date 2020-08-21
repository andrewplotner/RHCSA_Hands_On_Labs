<pre>
$ firewall-cmd --permanent --zone=public --add-port=80/tcp
$ firewall-cmd --permanent --zone=block --add-source=185.56.21.2
$ firewall-cmd --reload 
</pre>

<pre>
$ vi /etc/httpd/conf/httpd.conf 
change the DocumentRoot on line 122 & 127 from "/var/www/html" to "/var/web"
$ systemctl restart httpd
</pre>

<pre>
$ ls -Z /var/www 
$ semanage fcontext -a -t httpd_sys_content_t /var/web
$ restorecon /var/web/index.html
$ ls -Z /var/web
$systemctl restart httpd
$ curl localhost/index.html

</pre>

<pre>
$ find /etc -maxdepth 1 -atime +720 > /root/old-files
</pre>

<pre>
$ vi /etc/default/grub
$grub2-mkconfig -o /boot/grub2/grub.cfg

</pre>
