<pre> Verify There is no curent swap space available </pre>

<pre> create a partition of vdb that uses is 3GB; make sure to label the device correctly to use the swap type </pre>

Verification not working, use the below command to check your work:
`IN=$( lsblk | awk '/vdb1/ {print $4}' ) && [[ $IN == 3G ]] && echo "Congrats! everything looks great!" || echo "Sorry, Try Again"`{{execute}}
