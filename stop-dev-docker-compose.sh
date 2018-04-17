#!/bin/bash
set -e

echo "-- stop postgres --"
docker-compose -f docker-local/postgres-docker-compose.yaml down

if [ -z "$1" ]
  then
    echo "No argument supplied. Fallback to defaults."
    cd ~/Activiti7/activiti-cloud-examples/docker
else	
	cd "$1"/activiti-cloud-examples/docker
fi

echo "-- stop infrastructure --"
docker-compose -f infrastructure-docker-compose.yml down