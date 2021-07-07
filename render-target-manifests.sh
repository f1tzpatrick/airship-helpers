#!/bin/bash

# Render the workload phases for the target cluster and save in the home directory

mkdir -p $HOME/rendered-manifests

airshipctl phase render workload-target > $HOME/rendered-manifests/workload-target.yaml
airshipctl phase render workload-config-target > $HOME/rendered-manifests/workload-config-target.yaml
