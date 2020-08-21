IN=$( lsblk | grep vdb1 | cut -d" " -f20 ) && [[ $IN == 20G ]] && echo done
