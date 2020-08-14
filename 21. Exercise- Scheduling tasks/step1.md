Run this command: `apt-get install -y chrony`{{execute}}

<pre> update the system's timezone to America/Chicago </pre>

Verify answer with:`RED=$(tput setaf 1) ; GREEN=$(tput setaf 2); RESET=$(tput setaf 7); CHECK=$( timedatectl | grep "Time zone:" | cut -d" " -f26 ) && [[ $CHECK == "America/Chicago" ]] && echo "${GREEN}Awesome, proceed ${RESET}" || echo "${RED}Try Again${RESET}"`{{execute}}
