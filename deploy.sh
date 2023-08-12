#!/bin/bash

echo $a

ssh -o StrictHostKeyChecking=no -i $sshkeyvar $ubuntu@$a<<EOF

# login dockerhub
docker login -u $DOCKERHUBUSER -p $DOCKERHUBPSW

sudo docker-compose  up -d

if curl localhost:80
then
    echo "Successfully installed"
fi

docker logout

EOF
