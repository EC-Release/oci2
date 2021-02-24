#!/bin/bash
#printf "\n\n\n*** test v1 agt mode w/ docker\n\n"
#docker run -rm --env-file=test/gateway.env enterpriseconnect/agent:v1 -ver
printf "\n\n\n*** test v1 agt mode w/ docker\n\n"
docker run --rm --env-file=e2e/gateway.env enterpriseconnect/agent:v1 -ver
printf "\n\n\n*** test lber w/ docker\n\n"
docker run --rm enterpriseconnect/lb:v1

printf "\n\n\n*** test server+tls v1 plugin w/ docker\n\n"
#docker run -it --rm -d --name server-tls --env-file=k8s/example/server+tls.env enterpriseconnect/plugins:v1 && sleep 5 && docker logs server-tls 
docker run --rm --name server-tls --env-file=e2e/server+tls.env enterpriseconnect/plugins:v1 -ver
printf "\n\n\n*** test client+vln v1 plugin w/ docker\n\n"
docker run --rm --name client-vln --env-file=e2e/client+vln.env enterpriseconnect/plugins:v1 -ver
