
<pre> start and enable firewalld on your machine</pre>

<pre> Look at the list of services that the firewall is running </pre>

<pre> configure your public zone to accept traffic through port 80 and make it persistent </pre>

Verify answer with:`RED=$(tput setaf 1) ; GREEN=$(tput setaf 2); RESET=$(tput sgr0); firewall-cmd --reload ; CHECK=$( firewall-cmd --list-all | grep "ports: 80" | cut -d" " -f4 ) && [[ $CHECK == "80/tcp" ]] && echo "${GREEN}Awesome, proceed ${RESET}" || echo "${RED}Try Again${RESET}"`{{execute}}
