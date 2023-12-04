# Jenkins-Compose
This repository, 'Jenkins-Docker-Deployment', contains the Docker Compose files and related configuration scripts for setting up and running a Jenkins CI/CD server in a Docker environment.

Currently running docker on a VM within Proxmox.

## Configure the .env File:
Edit .env, set the HOST_USER variable to your username. This is the username of your user account on the system.  
Example:

```bash
HOST_USER=your_username
```
Replace your_username with your actual username.

## Make the Setup Script Executable:

Run the following command to make the setup script executable:
```bash
chmod +x setup.sh
```

## Run the Setup Script:

Execute the setup script to create necessary directories, set permissions, and start Docker Compose services:
```bash
./setup.sh
```

This script will automatically create the jenkins_configuration directory and set the correct permissions.

## Troubleshooting

docker run --rm jenkins/jenkins:lts id jenkins
id 1000
sudo chown -R 1000:1000 /home/GLA/Jenkins_Compose/jenkins_configuration
docker compose logs --follow


# Referances
https://www.coachdevops.com/2022/08/install-jenkins-using-docker-run.html
https://docs.docker.com/engine/install/ubuntu/
https://docs.docker.com/engine/install/linux-postinstall/