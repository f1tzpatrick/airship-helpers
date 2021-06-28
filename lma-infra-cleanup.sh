#!/bin/bash

# This script removes HelmReleases and CustomResources of the lma-infra composite

kubectl delete hr -n lma kube-prometheus-stack \
                                logging-operator \
                                logging-operator-logging

kubectl delete loggings.logging.banzaicloud.io --all
kubectl delete clusterflows.logging.banzaicloud.io --all
kubectl delete clusteroutputs.logging.banzaicloud.io --all

kubectl delete -n lma flows.logging.banzaicloud.io --all
kubectl delete -n lma outputs.logging.banzaicloud.io --all

kubectl delete -n lma prometheuses.monitoring.coreos.com --all
kubectl delete -n lma alertmanagers.monitoring.coreos.com --all

kubectl delete -n lma prometheusrules.monitoring.coreos.com --all
kubectl delete -n lma servicemonitors.monitoring.coreos.com --all
kubectl delete -n lma alertmanagerconfigs.monitoring.coreos.com --all

kubectl delete -n lma probes.monitoring.coreos.com --all
kubectl delete -n lma podmonitors.monitoring.coreos.com --all
kubectl delete -n lma thanosrulers.monitoring.coreos.com --all
