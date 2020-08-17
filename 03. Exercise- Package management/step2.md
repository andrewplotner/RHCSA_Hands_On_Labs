**<pre> Verify apache web server is installed </pre>**
<pre>If not installed do so now</pre>

`yum list installed | grep httpd`{{execute}}


>>Q1: What command will show all packages that provide /var/www/html<<
( ) yum -? /var/www
(*) yum whatprovides /var/www
( ) yum find /var/www

**<pre> Update just the apache server</pre>**

`CHECK=$( yum update httpd | grep "^No" | awk '{print $1}') ; if [[ $CHECK == No ]] ; then echo congrats ; else echo "Update Apache"; fi`{{execute}}

**<pre> Now remove the apache web server package. </pre>**



