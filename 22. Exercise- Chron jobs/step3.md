Run this command before starting `apt-get install -y anacron`{{execute}}

<pre> Delete your scheduled job </pre>

Verify answer with:`RED=$(tput setaf 1) ; GREEN=$(tput setaf 2); RESET=$(tput sgr0); CHECK=$( atq | cut -f2 | cut -d" " -f7 ) && [[ $CHECK != root ]] && echo "${GREEN}Awesome, proceed ${RESET}" || echo "${RED}Try Again${RESET}"`{{execute}}

<pre> Create a script called uptime.sh in the /home/user directory that records the current uptime of the system to the syslog file  `logger "$(uptime)"` and make sure that the script is executable </pre>

Verify answer with:`CHECK=$( ls -l /home/user | grep uptime | cut -d" " -f1 ) && [[ $CHECK == *x* ]] && CONTENT=$( cat /home/user/uptime.sh | grep uptime | cut -d" " -f1 ) && [[ $CONTENT == logger ]] && echo "${GREEN}Awesome, proceed ${RESET}" || echo "${RED}Try Again${RESET}"`{{execute}}

<pre> Schedule an anacronjob so that the script runs every 5 days if it has not currently been run; make sure the *job* name is "uptimelog".
Note: place the entry at the top of the other entries so it is run first. Follow Syntax of using Tabs to seperate columns </pre>

Verify answer with:`CHECK=$( cat /etc/anacrontab | grep "uptimelog" | cut -d" " -f3 ) && [[ $CHECK == uptimelog ]] && echo "${GREEN}Awesome, proceed ${RESET}" || echo "${RED}Try Again${RESET}"`{{execute}}
