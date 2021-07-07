#!/bin/bash

./lma-stack-cleanup.sh
./lma-infra-cleanup.sh
./lma-crd-cleanup.sh

kubectl delete cm -n airshipit airshipit-workload-config-target
