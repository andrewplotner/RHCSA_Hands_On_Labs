OUT=$( ls -l | grep testfile | cut -d" " -f1 ) && [[ $OUT == "-rw-rw-rw-" ]] && echo done
