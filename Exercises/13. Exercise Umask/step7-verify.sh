DOWN=$( cat /etc/bashrc | grep "umask 0" | cut -f2 ) && IN=$( cat /etc/profile | grep "umask 0" | cut -f2 ) && [[ $DOWN == *066* && *022* ]] && [[ $IN == *066** && *022* ]] && echo done