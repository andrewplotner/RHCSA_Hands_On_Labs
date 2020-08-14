Try to use the locate command to find the file "motd"
<pre> `locate motd`{{execute}} </pre>
Notice how it fails. This is because we need to run a command to update the cache of the system so it has something to search through.
<pre> `updatedb`{{execute}} </pre>
Now try again:
>>Q1: where does the motd file reside on the system? <<
(*) etc/motd
( ) /home/motd
( ) /user/bin/motd
( ) /tmp/motd


