<pre> Disable to Network Time Protocol</pre>

<pre> set the time of the system to be 02:00:00 </pre>

Verify answer with:`CHECK=$( timedatectl | awk '/Local time/ {print $5}' ) && [[ $CHECK == 02:0* ]] && NTP=$( timedatectl | awk '/NTP/{print $3}' ) && [[ $NTP == inactive ]] && echo "${GREEN}Awesome, proceed ${RESET}" || echo "${RED}Try Again${RESET}"`{{execute}}
