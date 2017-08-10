#!/bin/bash

FIREFOX_DIRS=()
for dir in ${FIREFOX_DIRS[@]}; do
  cd $dir
  cp firefox firefox.bak
  mv firefox firefox-bin
  cp firefox.sh firefox
done
