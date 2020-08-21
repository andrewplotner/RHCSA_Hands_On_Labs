<pre> Start the process again using the kill command</pre>

<pre> Chech the status of the job </pre>

<pre> Kill the process without allowing any blocking of the kill command  </pre>

Verify the actions are complete with the following commad:`  
IN=$( jobs | grep "while true" | cut -d" " -f3 ) && [[ $IN == "Running" ]] && [[ $IN == "Stopped" ]] && echo "Try Again" || echo "Great Job"`{{execute}}

