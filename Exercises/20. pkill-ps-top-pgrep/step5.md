
As "user" in terminal 2 exit out of vi and run the following command:
`(while true; do echo "My program" > ~/output.file; done) &`{{execute}}

<pre> Go back to terminal 1 as root and view the processes that user is running using top</pre>

>>Q3: How would you sort all processes by memory?<<
(*) Shift + M
( ) Ctrl + M
( ) M

>>Q4: How would you sort all processes by CPU?<<
( ) Ctrl + P
( ) P
(*) Shift + P

<pre> Renice the bash process from user to have a niceness of 19 </pre>

`if (IN=$(ps axo pid,comm,nice | grep bash | grep 19 | cut -d" " -f16) && [[ $IN == 19 ]] ) ; then echo "Great Job"; else echo "Try Again" ; fi`{{execute}}

<pre> The Bash process that the user is running, is still utilizing way too much CPU, utilize top to kill it ruthlessly</pre> 

verify with: `IN=$(ps axo pid,comm,nice | grep bash | grep 19 | cut -d" " -f16) && [[ $IN == 19 ]] && echo "Try Again" || echo "Awesome Job!"`{{execute}}
