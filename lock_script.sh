#! /bin/bash

case "$1" in
  nsa)
    sudo shutdown -h now
    ;;
  *)
    feh -F "$(dirname "$0")"/failed.sh \
    & p="$!"; sleep 1.2; kill "$p" \
    & streamer -f jpeg -o "~/SOMEONE_TRIED_TO_ACCESS_YOUR_SCREEN_$(date)".jpeg
    ;;
esac



