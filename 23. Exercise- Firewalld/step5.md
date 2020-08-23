Turns out that someone moved this html file into the directory instead of copying it into the directory. As a result it still has its old directories SELinux label and cannot be accessed by httpd. Change the label to match its proper directory. 

run this command to confirm: `curl localhost/index.html`{{execute}}

verify: RED=$(tput setaf 1) ; GREEN=$(tput setaf 2); RESET=$(tput sgr0); firewall-cmd --reload ; CHECK=$( ls -lZ /var/www/html | awk -F: '/index.html/ {print $3}' ) && [[ $CHECK == httpd_sys_content_t ]] && echo "${GREEN}Awesome, proceed ${RESET}" || echo "${RED}Try Again${RESET}"{{execute}}
