#! /bin/bash

wget https://github.com/vaulttec/sonar-auth-oidc/releases/download/v2.1.1/sonar-auth-oidc-plugin-2.1.1.jar -P $(docker inspect -f '{{ (index .Mounts 1).Source }}' sonarqube)/plugins
docker restart sonarqube
