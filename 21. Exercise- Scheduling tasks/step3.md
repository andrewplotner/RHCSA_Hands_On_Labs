>>Q1: Which directory are the NTP time services located in?<<
[ ] /etc/time.service
[*] /etc/chrony/chrony.conf
[ ] /etc/network.service
[*] /etc/ntp.conf

run the `chronyc sources -v`{{execute}} command to view all the time servers available to you. 
<pre> Open up /etc/chrony/chrony.conf and remove the 4 pools of servers </pre>

<pre> Start ntp services and restart your chrony through systemctl </pre>
<pre> Run the chronyc sources command again to see how that changed it </pre>

Verify answer with:`CHECK=$( cat /etc/chrony/chrony.conf | grep "pool 0.u" | cut -d" " -f3 ) && if [[ $CHECK != "iburst" ]] ;then echo "${GREEN}Awesome Job, proceed ${RESET}" ;else echo "${RED}TRY AGAIN ${RESET}"; fi`{{execute}}
