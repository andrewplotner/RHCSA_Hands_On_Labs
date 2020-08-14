<pre> Disable to Network Time Protocol</pre>

<pre> set the time of the system to be 02:00:00 </pre>

Verify answer with:`CHECK=$( timedatectl | grep "Local time" | cut -d" " -f27 ) && [[ $CHECK == 02:0* ]] && echo "${GREEN}Awesome, proceed ${RESET}" || echo "${RED}Try Again${RESET}"`{{execute}}
