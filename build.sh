#!/bin/bash

set -e

# first create image using dockerfile
docker build -t muthu:v1.1 .

# login dockerhub & push the image 
docker login -u $DOCKERHUBUSER -p $DOCKERHUBPSW
docker tag muthu:v1.1 muthummkdh/new4
docker push muthummkdh/new4

