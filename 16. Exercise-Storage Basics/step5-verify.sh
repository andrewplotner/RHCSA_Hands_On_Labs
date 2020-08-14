OUT=$( ls /dev/professor | grep oak | cut -d" " -f1 ) && [[ $OAK -eq "lrwxrwxrwx" ]] && echo done
