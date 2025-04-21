#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title myip
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName Developer utils

# Documentation:
# @raycast.description This command prints the local IP address of the machine.
# @raycast.author pranit_mane
# @raycast.authorURL https://raycast.com/pranit_mane

ip_address=$(ifconfig | awk '/inet / && $2 != "127.0.0.1" { print $2; exit }')

if [ -n "$ip_address" ]; then
  echo "$ip_address"
else
  echo "Unable to find the IP address."
fi


