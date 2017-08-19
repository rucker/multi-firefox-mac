#!/bin/bash

# Set this array to dirs containing firefox binary for each Firefox instance
FIREFOX_DIRS=()
SRC_DIR="$(dirname $([ -L $0 ] && readlink -f $0 || echo $0))"
for dir in "${FIREFOX_DIRS[@]}"; do
  cd "${dir}"
  echo ${dir}
  if [[ $(file firefox) =~ shell ]]; then
    echo It looks like ./firefox is already a shell script. Nothing to do...
  else
    echo Fixing up Firefox files...
    if [[ ! -f firefox.sh ]]; then
        echo Copying firefox.sh to ${dir}
        cp ${SRC_DIR}/firefox.sh .
        echo Please set PROFILE_DIR in this firefox.sh and run again
        echo
        continue
    fi
    cp firefox firefox.bak
    mv firefox firefox-bin
    cp firefox.sh firefox
    echo
  fi
done
