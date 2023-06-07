#!/bin/bash
set -euo pipefail

# source the env config, create this if it doesn't exist already
. ../eapxp4/properties.sh

# login to openshift
oc login --token=${AUTH_TOKEN} --server=${OPENSHIFT_URL}

# uninstall app
oc delete deployment/frmapbox-mock
