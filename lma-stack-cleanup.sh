
#!/bin/bash

# This script removes HelmReleases and CustomResources of the lma-stack composite

kubectl delete hr -n lma thanos-operator \
                                grafana \
                                elasticsearch-data \
                                elasticsearch-ingest \
                                prometheus-elasticsearch-exporter \
                                kibana \
                                minio

kubectl delete objectstores.monitoring.banzaicloud.io -n lma --all
kubectl delete storeendpoints.monitoring.banzaicloud.io -n lma --all
kubectl delete thanos.monitoring.banzaicloud.io -n lma --all

kubectl delete secret -n lma minio minio-admin minio-admin-secret
kubectl delete cm -n airshipit airshipit-lma-stack
