#!/bin/bash

# Download Charts to reference during development

mkdir -p helm-charts

cd helm-charts

git clone git@github.com:fluxcd/helm-operator.git ./fluxcd/helm-operator
git clone git@github.com:elastic/helm-charts.git ./elastic/helm-charts
git clone git@github.com:grafana/helm-charts.git ./grafana/helm-charts
git clone git@github.com:prometheus-community/helm-charts.git ./prometheus-community/helm-charts
git clone git@github.com:banzaicloud/banzai-charts.git ./banzaicloud/banzai-charts
git clone git@github.com:banzaicloud/logging-operator.git ./banzaicloud/logging-operator
git clone git@github.com:banzaicloud/thanos-operator.git ./banzaicloud/thanos-operator
git clone git@github.com:minio/charts.git ./minio/minio

git clone "https://review.opendev.org/openstack/openstack-helm-deployments" ./openstack-helm/openstack-helm-deployments
