<pre> 
Troubleshooting steps
1. Check that httpd service is started
  systemctl status httpd
2. Check that index.html is located in the default html directory /var/www/html
3. Check the SELinux permissions of the html directory (touch a file in the directory if you have to)
  ls -lZ /var/www/html
4. check the httpd configuration file to see where it is pulling from. 
