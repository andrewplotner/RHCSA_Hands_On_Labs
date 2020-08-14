<pre> Add the following sources back into the chrony.conf file </pre>
<pre>
hostname and options are as follows:
pool ntp.ubuntu.com iburst maxsources 4
pool 0.ubuntu.pool.ntp.org iburst maxsources 1
pool 1.ubuntu.pool.ntp.org iburst maxsources 1
pool 2.ubuntu.pool.ntp.org iburst maxsources 2

<pre> Confirm by running the sources command you used in the previous step. </pre>


Verify answer with:`CHECK=$( cat /etc/chrony/chrony.conf | grep "pool 0.u" | cut -d" " -f3 ) && [[ $CHECK == "iburst" ]] && echo "${GREEN}Awesome Job, Proceed ${RESET}" || echo "$${RED}Try Again ${RESET}"`{{execute}}
