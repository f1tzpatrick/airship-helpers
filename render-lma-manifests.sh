#!/bin/bash

# Render the workload phases for the lma subcluster and save in the home directory

mkdir -p $HOME/rendered-manifests

airshipctl phase render workload-lma > $HOME/rendered-manifests/workload-lma.yaml
airshipctl phase render workload-config-lma > $HOME/rendered-manifests/workload-config-lma.yaml
