group=$( cat /etc/group | grep Helix | cut -d: -f1 ) && [[ $group == Twitch ]] && echo "done"
