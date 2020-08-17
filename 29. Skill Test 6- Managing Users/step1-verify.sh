group=$( cat /etc/group | grep Helix | cut -d: -f1 ) && [[ $group == Twitch ]] && PASS=$( cat /etc/login.defs | grep PASS_WARN_AGE | awk '{print $2}' ) && [[ $PASS == 14 ]] && echo "done"
