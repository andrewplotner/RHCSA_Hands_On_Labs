<pre> ssh-copy-id bob@node01 </pre>

Note* the environment may have chosen to not load the scp-copy-id command. That's ok, because we will just do the full commands that the script is executing*

What the script does:

creates a .ssh folder in bobs home directory
<pre> ssh bob@node01 mkdir .ssh </pre>

Then it transfers the public key we made over to that directory
<pre> scp /home/bob/.ssh/id_rsa.pub bob@node01:/home/bob/.ssh </pre>

It then changes the name of that key to be "authorized_kys" and thats it. 
<pre> ssh bob@node01 mv /home/bob/.ssh/id_rsa.pub /home/bob/.ssh/authorized_keys </pre>
