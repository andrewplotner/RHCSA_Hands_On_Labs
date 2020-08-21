OUT=$( df -hP /mnt/media | grep Professor | awk '{print $2}' ) && [[ $OUT == 18G ]] && echo done
