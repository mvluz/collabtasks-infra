#!/bin/bash

# Path to the .env file (assumes script is run from its own folder)
envFile="$(dirname "$0")/.env"

# Export variables from .env, ignoring comments and empty lines
set -a
grep -v '^\s*#' "$envFile" | grep -v '^\s*$' | while IFS='=' read -r key value; do
    export "$key"="$value"
done
set +a

# Change directory to script folder
cd "$(dirname "$0")"

# Start the containers with --build to rebuild the image
# (needed to install gettext for the envsubst command after downloading the original image)
docker-compose up --build -d
