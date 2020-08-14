OUT=$( df -hP /mnt/media | grep professor | cut -d" " -f2 ) && [[ $OUT -eq "18G" ]] && echo done
