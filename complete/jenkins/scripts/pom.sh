#!/usr/bin/env bash

set -x
ARTIFACTID=`mvn help:evaluate -Dexpression=project.artifactId | grep "^[^\[]"`
set +x

set -x
VERSION=`mvn help:evaluate -Dexpression=project.version | grep "^[^\[]"`
set +x