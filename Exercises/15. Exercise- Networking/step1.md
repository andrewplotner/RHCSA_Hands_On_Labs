<pre> View the current Hostname </pre>

<pre> Yuck! That's not very pretty. Set the persistent hostname in the system to 
"myserver.domain.com" </pre>

Verify by running this command to ensure its persistant: `CHECK=$(cat /etc/hostname) && [[ $CHECK = "myserver.domain.com" ]] && echo "Awesome Job!" || echo "Try Again"`{{execute}}



