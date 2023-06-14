#!/bin/bash
set -xeou pipefail

export TAG=$1

yq e -i '.*.image.tag = strenv(TAG)' helm/workflow-poc/values.yaml
yq e -i '.version = strenv(TAG)' helm/workflow-poc/Chart.yaml
yq e -i '.appVersion = strenv(TAG)' helm/workflow-poc/Chart.yaml
