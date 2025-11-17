#!/bin/bash

INSTANCE_URL=$(docker exec gitea grep ROOT_URL /data/gitea/conf/app.ini | cut -d'=' -f2 | tr -d ' ')
REGISTRATION_TOKEN=$(docker exec -u git gitea gitea --config /data/gitea/conf/app.ini actions generate-runner-token)

cat > .env <<EOF
INSTANCE_URL=${INSTANCE_URL}
REGISTRATION_TOKEN=${REGISTRATION_TOKEN}
RUNNER_NAME=gitea-runner
RUNNER_LABELS=docker,self-hosted,linux,x64
EOF
