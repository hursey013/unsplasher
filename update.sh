#/bin/bash

SIZE=1920x1080 #size of desktop
TERMS=wallpaper,nature #comma separated list
FEATURED_ONLY=true #limit results to photos included in curated collections
LOCAL=/tmp/wallpaper.jpg #where to store wallpaper locally
REMOTE=https://source.unsplash.com/"$SIZE"/?"$TERMS"

if [ "$FEATURED_ONLY" = true ]; then
  REMOTE="$REMOTE,featured"
fi

wget -q --spider "$REMOTE" #first test that REMOTE is reachable

if [ "$?" -eq 0 ]; then
  PROPS=$(xfconf-query -c xfce4-desktop -l | grep last-image)
  
  wget -O "$LOCAL" "$REMOTE"

  for PROP in $PROPS; do
    xfconf-query -c xfce4-desktop -p "$PROP" -s "$LOCAL"
  done
fi

