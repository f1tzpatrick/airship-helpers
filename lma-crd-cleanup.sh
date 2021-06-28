#!/bin/bash

# This script removes various CRD from the cluster

kubectl delete crd alertmanagerconfigs.monitoring.coreos.com \
                    alertmanagers.monitoring.coreos.com \
                    clusterflows.logging.banzaicloud.io \
                    clusteroutputs.logging.banzaicloud.io \
                    flows.logging.banzaicloud.io \
                    loggings.logging.banzaicloud.io \
                    outputs.logging.banzaicloud.io \
                    podmonitors.monitoring.coreos.com \
                    probes.monitoring.coreos.com \
                    prometheuses.monitoring.coreos.com \
                    prometheusrules.monitoring.coreos.com \
                    servicemonitors.monitoring.coreos.com \
                    thanosrulers.monitoring.coreos.com \
                    objectstores.monitoring.banzaicloud.io \
                    receivers.monitoring.banzaicloud.io \
                    storeendpoints.monitoring.banzaicloud.io \
                    thanos.monitoring.banzaicloud.io \
                    thanosendpoints.monitoring.banzaicloud.io \
                    thanospeers.monitoring.banzaicloud.io
