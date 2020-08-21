RPM allows us to query information about any packages it has downloaded.
To see if it is installed run:
`rpm -qa nano`{{execute}} 

To see all the files installed as apart of nano run
`rpm -ql nano`{{execute}}

To list all the documentation about nano run
`rpm -qd nano`{{execute}} 

The last one is very powerful as it provides you the read me and everything else you need to know about proper use of the package. 

