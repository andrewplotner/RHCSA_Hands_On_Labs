<pre> Verify There is no curent swap space available </pre>

<pre> create a partition of vdb that uses its entire space; make sure to label the device correctly to use the swap type </pre>

Verification not working, use the below command to check your work:
`IN=$( lsblk | grep vdb1 | cut -d" " -f20 ) && [[ $IN == 20G ]] && echo "Congrats! everything looks great!" || echo "Sorry, Try Again"`{{execute}}
