#!/bin/bash

# Load environment variables from .env file
if [ -f .env ]; then
    export $(grep -v '^#' .env | xargs)
fi

# Create the necessary directory with the correct permissions and ownership
DIRECTORY="/home/${HOST_USER}/Jenkins-Compose/jenkins_configuration"
mkdir -p "$DIRECTORY"
sudo chown -R 1000:1000 "$DIRECTORY"
sudo chmod -R 755 "$DIRECTORY"

# Start Docker Compose
docker compose up -d

