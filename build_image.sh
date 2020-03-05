#!/bin/sh
USER=larsw
ID=cyberchef
VERSION=$(cat version)
TAG="${USER}/${ID}:${VERSION}"
docker build -t $TAG .
docker tag $TAG "${USER}/${ID}:latest"

