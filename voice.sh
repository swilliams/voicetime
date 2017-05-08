#!/bin/bash

# Fetch a file
curl -s -O https://raw.githubusercontent.com/swilliams/voicetime/master/cupcake.txt
CUPCAKE=`cat cupcake.txt`

# Repeat this every few seconds
dostuff () {
  # repeat randomly between 2 minutes and 10
  SLEEP_SECS=`jot -r 1 120 600`

  sleep $SLEEP_SECS
  say $CUPCAKE
  dostuff
}

dostuff
