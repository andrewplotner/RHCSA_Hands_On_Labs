
>>Q1: What command would you run to see all users connections?<<
=== w

<pre> start the vi process in a new terminal using the "user" account </pre>

<pre> Using pgrep and pkill terminate the vi process of the "user" </pre>

verify with the following command: `IN=$( pgrep -u user | grep vi | cut -d" " -f2 ) && [[ $IN == vi ]] && echo "Try Again" || echo "Great Job!"`{{execute}}
