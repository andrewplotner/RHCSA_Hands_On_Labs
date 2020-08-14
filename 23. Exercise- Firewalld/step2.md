<pre> remove port 80 from the public zone and add it to the internal zone. specify the sole computer 192.168.1.55 within the internal zone </pre>

Verify answer with:`RED=$(tput setaf 1) ; GREEN=$(tput setaf 2); RESET=$(tput sgr0); firewall-cmd --reload ; CHECK=$( firewall-cmd --zone=internal --list-all | grep "192.168.1.55" | cut -d" " -f4 ) && [[ $CHECK == "192.168.1.55" ]] && echo "${GREEN}Awesome, proceed ${RESET}" || echo "${RED}Try Again${RESET}"`{{execute}}
