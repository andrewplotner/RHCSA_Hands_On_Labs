<pre> Objective 1 </pre>
Setup a Samba Share that is browsable, writable, and is located on host1 at the path "/smb". The authentication username should be "smbuser" with a password of "LordHelix". 
		
<pre>Objective 2 </pre>
On Host 2 mount the Samba share to /mnt/smb

<pre>Objective 3 </pre>
Setup an NFS Share that is located on host1 at the path "/nfs" which is readable and writable to everyone in your /24,/16, or /8 subnet (determined by host2's IP). 

<pre>Objective 4 </pre>
Mount the NFS file system on Host 2 at /mnt/smb, and make it persistent. 

	
<pre>Objective 5</pre>
Touch "Verify.txt" in both the nfs shared and smb shared folders
	
