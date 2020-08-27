
**<pre>Objective 4</pre>** 
Configure the yum repository of `http://district.example.com/repo/rhel7`
 
**<pre>Objective 5</pre>**
Reduce the size of the `rhel-swap` LVM to `500M`

**<pre>Objective 6 </pre>**
Create a group `sysadmin`. Create users `susan,harry and natasha`. Users `susan` and `harry` should be apart of the `sysadmin group`. `natasha` should `not` be apart of that group and `should not be allowed to log into the shell`. All users passwords should be `"password"`.

**<pre>Objective 7</pre>**
copy `/etc/fstab` to `/var/tmp/fstab`. The user and group owner of that file should be `root`. All users should be able to `read` the file. No one should be able to `execute it`. `susan` should `not` be able to read or write. `natasha` should be able to read and write. 

**<pre>Objective 8</pre>** 
Secure `/data` such that `only` group `sysadmin` can access it. Group owner should be `sysadmin` & all child directories and files by default should have `group sysadmin permissions`. 

**<pre>Objective 9</pre>**
Configure an ldap client, where your ldap server is `station.district.example.com`, LDAP Base DN: `dc=station,dc=district,dc=example,dc=com`. Authenticate your ldap server using the certificate `https://classroom.example.com/pub/example-ca.crt`
<pre>
>>Q1 what command do you need to run to utilize the GUI version of setting up LDAP?<<
=== authconfig-gtk
</pre>
vim the full authconfig command you would run in `/file/authconfig.test` and run the following command to verify if the what you wrote is correct `file1=$(cat /root/authconfig.test); file2=$(cat /tmp/authconfig.verify) ; [[ $file1 == $file2 ]] && echo "Awesome Job" || echo "Open up /tmp/authconfig.verify to see what you might have missed."`{{execute}}
**<pre>Objective 10 </pre>**
Configure your NTP server to synchronize with `station.district.example.com`

**<pre>Objective 11</pre>**
Home directories for your LDAP users should be automatically mounted on acces. These home directories are served from the NFS share "station.district.example.com:/home/guests/"


verify by comparing your actions to the commands in this file:`cat /tmp/ldap.homedir`{{execute}}

**<pre>Objective 12</pre>**
Add a repository `"http://district.example.com/repo/errata"` with the name `Kernel.repo`. Then check for a new kerenl and install if there is one. The newly installed kernel should be the default kernel and the previous kernel should be available and bootable at grub. 

**<pre>Objective 13 </pre>**
Add a cron job for the user susan `/bin/echo hiya` that executes `everyday` at `2:23pm`

**<pre>Objective 14 </pre>**
Create a `swap` partition of `512MB` utilizing a LV called `swap2`

**<pre>Objective 15 </pre>**
Synchronize the `/etc` directory tree to the `/configbackup` directory  A) create an archive named `/root/configuration-backup-server.tar.gz` with the `/configbackup` directory as content. Extract the contents of the  `/root/configuration-backup-server.tar.gz` to the `/tmp/configcompare` directory.  B) create an archive `/root/archive.tar.bz2` with the `/usr/local directory` as content. 

**<pre>Objective 16</pre>**
Add a user `jean` with user id of `3564`

**<pre>Objective 17</pre>**
Locate all files owned by the user `sasha` and copy them to `/home/lost+found/`

**<pre>Objective 18</pre>**
Create a Logical volume lvmgroup from the volume group rhel. The logical volume should have 100 extents. Mount this lvm as /mnt/lvm2 as an ext4 filesystem. 

**<pre>Objective 19</pre>**
Display the first 12 lines of the /usr/share/dict/words and send the output to the /home/student/headtail.txt file

**<pre>Objective 20</pre>**
Record the command to display all systemd jounral entries recorded between 9:05:00 and 9:15:00 in the /home/student/systemdreview.txt

**<pre>Objective 21</pre>** 
Deny user sasha to create cron jobs for herself.

**<pre>Objective 22</pre>**
Search for text `strato` in a file /usr/share/dict/words and copy this to a file /root/lines.txt. The new file should not have any blank spaces or lines. The order of the names in the new file should be the same as the original file. 


Run the verification to confirm objectives 1-22 have been accomplished before proceeding to objective 23 as it may break the box. `bash /tmp/verify.sh`{{execute}}
**<pre>Objective 23</pre>**
reduce the rhel-root lvm to 30G, create a 7G lvm named vdo and place a 15GB vdo named lucky onto the LVM. Then give the VDO an XFS file system and mount it persistently to /mnt/vdo

