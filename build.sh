#!/usr/bin/env bash
docker build -t $IMAGE .
docker push $IMAGE
docker rmi $IMAGE
