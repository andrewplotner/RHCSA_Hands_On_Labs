*<pre> Objective 1 </pre>*Schedule an "at" command to run at 7:02pm and create a syslog entry saying "I am a Pokemon Master" 		
*<pre>Objective 2 </pre>*Create a cron job named "Hello" that will run at 7:01PM daily and dictates for root to create an Entry in Syslog saying "hello world"
*<pre>Objective 3 </pre>*Set the system timezone to America/Denver, disable the ntp and set the local time to 1900.  
*<pre>Objective 4 </pre>*find the currently installed kernel version.  utilizing input output redirection echo that into "/root/verify"
*<pre>Objective 5</pre>*Using Input and output commands  to extract just the two commands that you placed in the /var/log/syslog file and redirect them to append to the /root/verify file. 
	
run this command to confirm ` Verify=$(cat /root/verify | awk '{print $3}') && [[ $Verify == *18* ]] && echo "Great Job" || echo "Try Again"`{{execute}} 
