#!/bin/bash
set -e

echo "-- start postgres --"
docker-compose -f docker-local/postgres-docker-compose.yaml up -d

if [ -z "$1" ]
  then
    echo "No argument supplied. Fallback to defaults."
    cd ~/Activiti7/activiti-cloud-examples/docker
else	
	cd "$1"/activiti-cloud-examples/docker
fi

echo "-- start infrastructure --"
docker-compose -f infrastructure-docker-compose.yml up -d