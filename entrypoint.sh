#!/bin/sh

# Check if all required arguments are provided
if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
  echo "Usage: $0 SERVER_URL USERNAME PASSWORD"
  exit 1
fi

SERVER_URL=$1
USERNAME=$2
PASSWORD=$3

# Configure the Bitwarden CLI server URL
bw config server "$SERVER_URL"

# Log in to Bitwarden and capture the session token
BW_SESSION=$(echo "$PASSWORD" | bw login "$USERNAME" --raw)

# Export the session token as an environment variable
export BW_SESSION

# Start an interactive shell
exec /bin/bash