systemctl start httpd
mkdir /var/web
echo "this was made in /root" >/root/index.html
mv /root/index.html /var/web/index.html
clear
