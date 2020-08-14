<pre> Click Here </pre>
`rm -rf /etc/yum.repos.d/epel.repo`{{execute}}

1.create the repo file for EPEL named "epel.repo"
[epel]
name=Extra Packages for Enterprise Linux 7 - $basearch
baseurl=http://download.fedoraproject.org/pub/epel/7/$basearch
failovermethod=priority
enable=1
gpgcheck=1 
gpgkey= file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7


