*_<pre> Objective 1 </pre>_*
Configure port 80 on the public domain to be open. Add a nefarious IP 185.56.21.2 to the block domain

*_<pre> Objective 2 </pre>_*
Configure the Apache server to serve index.html from /var/web

*_<pre> Objective 3 </pre>_*
The index.html file is not accessible. troubleshoot why that is the case.

*_<pre> Objective 4 </pre>_*
Find all files in /etc (no subdirectories) that are older than 720 days old and pipe that into a file /root/old-files

*_<pre> Objective 5 </pre>_*
Modify the grub timeout and make it 15 seconds instead of 5 second

Once complete please run the following command: `bash /tmp/verify.sh`{{execute}}