setenforce 0
echo 'authconfig --enable --enableauth --ldapserver=ldap://station.district.example.com --ldapbasedn="dc=station,dc=district,dc=example,dc=com" --enableldaptls --ldaploadcacert=https://classroom.example.com/pub/example-ca.crt --update' > /tmp/authconfig.verify

echo '# vim /etc/auto.master.d/home.autofs' > /tmp/ldap.homedir
echo '/netdir /etc/auto.home' >>  /tmp/ldap.homedir
echo '# vim /etc/auto.home' >>  /tmp/ldap.homedir
echo '*   -fstype=nfs,rw,sync    station.district.example.com:/home/guests/&' >>  /tmp/ldap.homedir
echo '#systemctl enable autofs ' >>  /tmp/ldap.homedir
echo '#systemctl restart autofs' >>  /tmp/ldap.homedir

useradd -m sasha -p password

touch file1 file2 file3 file4
chown sasha:sasha file1
chown sasha:sasha file2
chown sasha:sasha file3
chown sasha:sasha file4
mv file1 /tmp/file1
mv file2 /home/rhel/file2
mv file3 /home/packer/file3
mv file4 /home/sasha/file4

echo "Yes" > /usr/share/dict/words
echo "Yes" >> /usr/share/dict/words
echo "Yes" >> /usr/share/dict/words
echo "Yes" >> /usr/share/dict/words
echo "Yes" >> /usr/share/dict/words
echo "Yes" >> /usr/share/dict/words
echo "Yes" >> /usr/share/dict/words
echo "Yes" >> /usr/share/dict/words
echo "Yes" >> /usr/share/dict/words
echo "Yes" >> /usr/share/dict/words
echo "Yes" >> /usr/share/dict/words
echo "Hoorah" >> /usr/share/dict/words
echo "Hoorah" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words
echo "Strato you shouldnt have done non case sensitive" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words
echo "strato, YES you have done well" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words
echo "NO" >> /usr/share/dict/words


clear
