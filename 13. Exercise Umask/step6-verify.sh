OUT=$(  ls -l /tmp | grep file5 | cut -d" " -f1 ) &&  [[ $OUT == -r--* ]] && echo done
