#!/bin/bash

PROFILE_NAME=
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
"$DIR/firefox-bin" --no-remote -P $PROFILE_NAME
