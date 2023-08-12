#!/bin/bash

#first create image using dockerfile
docker build -t muthu:v1.2 .

# login dockerhub & push the image 
docker login -u $DOCKERHUBUSER -p $DOCKERHUBPSW
docker tag muthu:v1.2 muthummkdh/NEW
docker push muthummkdh/NEW

