#!/bin/bash
set -e

execution_path=$(pwd)

if [ -z "$1" ]
  then
    echo "No argument supplied. Fallback to defaults."
    cd ~/Activiti7/activiti-cloud-examples/docker
else	
	echo "-- stop infrastructure --"
	cd "$1"/activiti-cloud-examples/docker
	docker-compose -f infrastructure-docker-compose.yml down
fi

echo "-- stop postgres --"
docker-compose -f $execution_path/docker-local/postgres-docker-compose.yaml down