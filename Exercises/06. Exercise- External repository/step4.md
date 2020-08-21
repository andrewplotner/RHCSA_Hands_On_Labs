1.Download the GPG key from the epel repository and configure the .repo file to use the GPG key
<pre> use wget https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7 and place the key in /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7 </pre>

click here
`rm -rf /etc/yum.repos.d/epel.repo`{{execute}}
This removes the secondary instance of the repo so that the repo you just added shows up as the epel repo. 

2. confirm that the repository is in fact enabled on the system
