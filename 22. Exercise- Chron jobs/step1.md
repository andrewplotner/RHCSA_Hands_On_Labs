Run this command: `apt-get install -y chrony at`{{execute}}

<pre> use the at command that issues a statement to the system log file  that states "Look Ma, I updated the log file", and make that edit appear in the log file 2 minutes from now</pre>

<pre> IMMEDIATELY use journalctl to watch the log file to see your command come through at its specified time. </pre>

Verify answer with:`RED=$(tput setaf 1) ; GREEN=$(tput setaf 2); RESET=$(tput sgr0); CHECK=$( cat /var/log/syslog | grep "Look Ma," | cut -d" " -f5) && [[ $CHECK == "root:" ]] && echo "${GREEN}Awesome, proceed ${RESET}" || echo "${RED}Try Again${RESET}"`{{execute}}
