<pre> Run all anacron jobs regardless of their last run timestamp</pre>

>>Q2: Where can your view the timestamps for your uptimelog job? type in the path below <<
=~= /var/spool/anacron

<pre> Using the same script, schedule a cron job to run once a day using cron.daily and title it uptimelog</pre>

Verify answer with:`CHECK=$( cat /etc/cron.daily/uptimelog | grep uptime | cut -d" " -f1 ) && [[ $CHECK == logger ]] && echo "${GREEN}Awesome, proceed ${RESET}" || echo "${RED}Try Again${RESET}"`{{execute}}

<pre> Create a custom scheduled cron (not anacron) that runs the uptimelog every 5 minutes. 
Hint** Past the job instructions in /etc/chron.d/uptimelog where uptime log is the job you created.  </pre>

Verify answer with:`CHECK=$( cat /etc/cron.d/uptimelog | grep "uptime" | cut -d" " -f1 ) && [[ $CHECK == */5 ]] && echo "${GREEN}Awesome, proceed ${RESET}" || echo "${RED}Try Again${RESET}"`{{execute}}
