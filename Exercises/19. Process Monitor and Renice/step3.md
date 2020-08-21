<pre> Start the docker service with the most favorable nice possible </pre> 

If the verification check fails run this command to verify you ran the action successfuly:
`OUT=$( ps axo comm,nice | grep docker | cut -d" " -f10) && [ "$OUT" == "-20" ] &&  echo "Awesome Job!" || echo "Try Again"`{{execute}}
