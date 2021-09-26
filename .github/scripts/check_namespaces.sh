#!/usr/bin/env bash
set -eux
set -o pipefail

MONITORING=$(kubectl get ns | grep monitoring)
if [ $? -ne 0 ]; then
  kubectl create ns monitoring
fi

VOTING=$(kubectl get ns | grep vote)
if [ $? -ne 0 ]; then
  kubectl create ns vote
fi
