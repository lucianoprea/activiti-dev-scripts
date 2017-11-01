cd activiti-cloud-examples
cd docker
docker-compose -f infrastructure-docker.yml up -d
docker-compose -f rb-docker-compose.yml up -d
cd ..
cd ..