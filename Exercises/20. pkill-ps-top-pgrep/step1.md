**<pre> This command may eventually lock up the machine if it left running too long.</pre>**

Execute the following command `(while true; do echo "My Program" > ~/output.file; done) &`{{execute}}  

<pre> view the current jobs running in the background of your terminal </pre>

<pre> stop the process running, _Without_ killing it, using the kill command </pre>

<pre> view the stopped jobs in the background </pre>
Test with the below command
`IN=$( jobs | grep "while true" | cut -d" " -f3 ) && [[ $IN == Stopped ]] &&  GREEN=$(tput setaf 2)&& RESET=$(tput setaf 7) && echo "${GREEN}Awesome, proceed ${RESET}" || RED=$(tput setaf 1) && echo "${RED}Try Again${RESET}"`{{execute}}
