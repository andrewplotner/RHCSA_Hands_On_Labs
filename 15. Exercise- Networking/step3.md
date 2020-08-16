<pre> add "140.82.118.4 github.com" to your file based host entry </pre>

verify with: `  
OUT=$( cat /etc/hosts | grep github ) && [[ $OUT == 140.82.118.4* ]] && echo "Awesome Job" || echo "Try Again"`{{execute}}



