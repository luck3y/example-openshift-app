#!/bin/bash
set -euo pipefail

. properties.sh

oc -n ${NAMESPACE}  new-app postgresql-ephemeral \
   -p DATABASE_SERVICE_NAME=${APP_NAME} \
   -p POSTGRESQL_DATABASE=frdemo \
   -p POSTGRESQL_PASSWORD=frdemo \
   -p POSTGRESQL_USER=frdemo
