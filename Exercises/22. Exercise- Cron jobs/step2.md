<pre> Create a new Job that runs at teatime that says "Look Pa, I updated the Log File"</pre>

<pre> View the jobs you have scheduled and check that you have only one job in the que </pre>  

Verify answer with:`RED=$(tput setaf 1) ; GREEN=$(tput setaf 2); RESET=$(tput sgr0); CHECK=$( atq | cut -f2 | cut -d" " -f7 ) && [[ $CHECK == root ]] && echo "${GREEN}Awesome, proceed ${RESET}" || echo "${RED}Try Again${RESET}"`{{execute}}
