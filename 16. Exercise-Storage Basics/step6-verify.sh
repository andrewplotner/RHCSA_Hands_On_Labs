OUT=$( df -hP /mnt/media | grep Professor | awk '{print $2}' ) && [[ $OUT -eq "18G" ]] && echo done
