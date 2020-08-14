IN=$( jobs | grep "while true" | cut -d" " -f3 ) && [[ $IN == Stopped ]] && echo done
