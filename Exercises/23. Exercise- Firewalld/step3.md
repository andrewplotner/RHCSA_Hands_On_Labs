<pre>You have discovered malicious traffic from 235.185.78.122, add that ip to your drop zone </pre>

Verify answer with:`RED=$(tput setaf 1) ; GREEN=$(tput setaf 2); RESET=$(tput sgr0); firewall-cmd --reload ; CHECK=$( firewall-cmd --zone=drop --list-all | grep "235.185.78.122" | cut -d" " -f4 ) && [[ $CHECK == "235.185.78.122" ]] && echo "${GREEN}Awesome, proceed ${RESET}" || echo "${RED}Try Again${RESET}"`{{execute}}
