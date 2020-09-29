#!/usr/bin/env bash

# Push image to ECR
###################
aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 684870619712.dkr.ecr.us-west-2.amazonaws.com

# update latest version
docker tag atyenoria/janus-webrtc-gateway-docker:latest 684870619712.dkr.ecr.us-west-2.amazonaws.com/mediamash/janus-gateway:latest
docker push 684870619712.dkr.ecr.us-west-2.amazonaws.com/mediamash/janus-gateway:latest
