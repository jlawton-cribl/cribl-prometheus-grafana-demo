#!/bin/sh

#Make sure Docker is running
sudo docker run hello-world

#Create the containers
sudo docker compose up -d

#find the current ip of the instance
URL=$(curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//')

#Set the urls for the services
PROMETHEUS_URL=http://$URL:9090
CRIBL_URL=http://$URL:19000
GRAFANA_URL=http://$URL:3000

#Display the containers
sudo docker ps
