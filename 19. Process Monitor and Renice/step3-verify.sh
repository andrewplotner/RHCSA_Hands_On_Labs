OUT=$( ps axo comm,nice | grep docker | cut -d" " -f10) && [ "$OUT" == "-20" ] &&  echo done
