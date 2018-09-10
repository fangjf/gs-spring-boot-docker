#!/usr/bin/env bash

export ARTIFACTID=`mvn help:evaluate -Dexpression=project.artifactId | grep "^[^\[]"`

export VERSION=`mvn help:evaluate -Dexpression=project.version | grep "^[^\[]"`

envsubst < k8s/deployment.yaml.tmpl > k8s/deployment.yaml
