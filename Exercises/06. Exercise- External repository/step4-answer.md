<pre>cd /etc/pki/rpm-gpg </pre>
<pre>wget https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7 </pre>
<pre>	
# vim /etc/yum.repos.d/dl.fedoraproject.org_pub_epel_7_x86_64_.repo
[dl.fedoraproject.org_pub_epel_7_x86_64_]
name=added from: htp://dl.fedoraproject.org/pub/epel/7/x86_64/
baseurl=http://dl.fedoraproject.org/pub/epel/7/x86_64/
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
</pre>

<pre> yum repolist </pre>

	
