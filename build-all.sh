cd activiti-build
mvn clean install -DskipTests
cd ..
cd Activiti
mvn clean install -DskipTests
cd ..
cd activiti-cloud-build
mvn clean install -DskipTests
cd ..
cd activiti-cloud-service-common
mvn clean install -DskipTests
cd ..
cd activiti-cloud-runtime-bundle-service
mvn clean install -DskipTests
cd ..
cd activiti-cloud-query-service
mvn clean install -DskipTests
cd ..
cd activiti-cloud-audit-service
mvn clean install -DskipTests
cd ..
cd activiti-cloud-form-runtime-service
mvn clean install -DskipTests
cd ..
cd activiti-cloud-process-model-service
mvn clean install -DskipTests
cd ..
cd activiti-cloud-connectors
mvn clean install -DskipTests
cd ..
cd activiti-cloud-registry
mvn clean install -DskipTests
cd ..
cd activiti-cloud-gateway
mvn clean install -DskipTests
cd ..
cd activiti-cloud-sso-idm
docker build . -t activiti/activiti-cloud-sso-idm:latest
cd ..
cd activiti-cloud-query
mvn clean install -DskipTests
cd ..
cd activiti-cloud-audit
mvn clean install -DskipTests
cd ..
cd activiti-cloud-audit-mongodb
mvn clean install -DskipTests
cd ..
cd activiti-form-runtime
mvn clean install -DskipTests
cd ..
cd activiti-cloud-examples/maven-runtime-bundle/
mvn clean install -DskipTests
cd ..
Cd ..