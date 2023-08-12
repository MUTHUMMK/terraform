#!/bin/bash

set -e
echo $a

# login the ssh-remote server & put the variable instead of public ip
scp -o StrictHostKeyChecking=no -i  $sshkeyvar docker-compose.yml $ubuntu@$a:/home/ubuntu
ssh -o StrictHostKeyChecking=no -i $sshkeyvar $ubuntu@$a<<EOF

ls

sudo apt-get update -y

sudo apt-get install docker.io -y
sudo apt-get install docker-compose -y

sudo docker-compose  up -d

if curl localhost:80
then
    echo "Successfully installed"
fi

echo "deploy success"

EOF
