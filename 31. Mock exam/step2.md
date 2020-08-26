<pre>
**Objective 4** 
Configure the yum repository of `http://district.example.com/repo/rhel7`
 
**Objective 5**
Reduce the size of the `rhel-swap` LVM to `500M`
 
**Objective 6 **
Create a group `sysadmin`. Create users `susan,harry and natasha`. Users `susan` and `harry` should be apart of the `sysadmin group`. `natasha` should `not` be apart of that group and `should not be allowed to log into the shell`. All users passwords should be `"password"`.
 
**Objective 7**
copy `/etc/fstab` to `/var/tmp/fstab`. The user and group owner of that file should be `root`. All users should be able to `read` the file. No one should be able to `execute it`. `susan` should `not` be able to read or write. `natasha` should be able to read and write. 
 
**Objective 8** 
Secure `/data` such that `only` group `sysadmin` can access it. Group owner should be `sysadmin` & all child directories and files by default should have `group sysadmin permissions`. 
 
**Objective 9**
Configure an ldap client, where your ldap server is `station.district.example.com`, LDAP Base DN: `dc=station,dc=district,dc=example,dc=com`. Authenticate your ldap server using the certificate `https://classroom.example.com/pub/example-ca.crt`

>>Q1 what command do you need to run to utilize the GUI version of setting up LDAP?<<
=== authconfig-gtk

vim the full authconfig command you would run in /`file/authconfig.test` and run the following command to verify if the what you wrote is correct `file1=$(cat /root/authconfig.test); file2=$(cat /tmp/authconfig.verify) ; [[ $file1 == $file2 ]] && echo "Awesome Job" || echo "Open up /tmp/authconfig.verify to see what you might have missed."`{{execute}}

**Objective 10 **
Configure your NTP server to synchronize with `station.district.example.com`

**Objective 11**
You can use the user ldapuser(#) with the passwd "password". Home directories for your LDAP users should be automatically mounted on acces. These home directories are served from the NFS share "station.district.example.com:/home/guests/"

verify by comparing your actions to the commands in this file: `cat /tmp/ldap.homedir`{{execute}}
 
**Objective 12**
Add a repository `"http://district.example.com/repo/errata"` with the name `Kernel.repo`. Then check for a new kerenl and install if there is one. The newly installed kernel should be the default kernel and the previous kernel should be available and bootable at grub. 

**Objective 13 **
Add a cron job for the user susan `/bin/echo hiya` that executes `everyday` at `2:23pm`

**Objective 14 **
Create a `swap` partition of `512MB` utilizing a LV called `swap2`

**Objective 15 **
Synchronize the `/etc` directory tree to the `/configbackup` directory  A) create an archive named `/root/configuration-backup-server.tar.gz` with the `/configbackup` directory as content. Extract the contents of the  `/root/configuration-backup-server.tar.gz` to the `/tmp/configcompare` directory.  B) create an archive `/root/archive.tar.bz2` with the `/usr/local directory` as content. 

**Objective 16 **
Add a user `jean` with user id of `3564`

**Objective 17 **
Locate all files owned by the user `sasha` and copy them to `/home/lost+found/`

**Objective 18 **
Create a Logical volume lvmgroup from the volume group rhel. The logical volume should have 100 extents. Mount this lvm as /mnt/lvm2 as an ext4 filesystem. 

**Objective 19 **
Display the first 12 lines of the /usr/share/dict/words and send the output to the /home/student/headtail.txt file
 
**Objective 20 **
Record the command to display all systemd jounral entries recorded between 9:05:00 and 9:15:00 in the /home/student/systemdreview.txt
 
**Objective 21** 
Deny user sasha to create cron jobs for herself.

**Objective 22**
Search for text `strato` in a file /usr/share/dict/words and copy this to a file /root/lines.txt. The new file should not have any blank spaces or lines. The order of the names in the new file should be the same as the original file. 

Run the verification to confirm objectives 1-22 have been accomplished before proceeding to objective 23 as it may break the box. `bash /tmp/verifyscript`{{execute}}

**Objective 23**
reduce the rhel-root lvm to 30G, create a 7G lvm named vdo and place a 15GB vdo named lucky onto the LVM. Then give the VDO an XFS file system and mount it persistently to /mnt/vdo
</pre>
