#!/bin/bash

# Build the docker image
docker build -t $IMAGE_NAME:$IMAGE_NAME -f $DOCKER_FILE ./

# Get login for AWS CLI
$(aws ecr get-login --no-include-email --region $AWS_DEFAULT_REGION)

# Tag and push the image to ECR
docker tag $IMAGE_NAME:$IMAGE_TAG $ECR_UR}/$IMAGE_NAME:$IMAGE_TAG
docker push $ECR_URL/$IMAGE_NAME:$IMAGE_TAG
