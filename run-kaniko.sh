#!/bin/bash

docker run \
-v $(pwd):/usr \
gcr.io/kaniko-project/executor:latest \
--dockerfile=Dockerfile \
--context=/usr \
--insecure \
--destination=host.docker.internal:5000/hello-kaniko:latest
