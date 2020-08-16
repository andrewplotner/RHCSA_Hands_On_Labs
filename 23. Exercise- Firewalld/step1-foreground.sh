yum install -y httpd
echo "This website was made in /root" > /root/index.html
mv /root/index.html /var/www/html/index.html
touch /var/www/html/SELinux-defaults.html
systemctl restart httpd
systemctl start httpd
clear
