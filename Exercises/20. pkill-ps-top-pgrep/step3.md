


<pre>1. Use pgrep to grep for all processes that are running as the root user and display the process names</pre>

>>Q2: What is the first program being run by root?<<
=== systemd

<pre>3. open up a second terminal window, add a user called "user"</pre>

<pre>4. Switch user to user and open up the vim program. </pre>

<pre>5. go back to terminal 1 where you are root and grep for all processes under the user "user" </pre>

Verify actions are completed with the following commpand: `IN=$( pgrep -u user -l| grep "vim" | cut -d" " -f2 ) && [[ $IN == vim ]] && echo "Great Job" || echo "Try Again"`{{execute}}
