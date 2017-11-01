#!/bin/bash
set -e
cd activiti-cloud-examples
cd docker
docker-compose -f infrastructure-docker.yml down -d
docker-compose -f rb-docker-compose.yml down -d
cd ..
cd ..