#!/bin/bash

a=$(aws ec2 describe-instances --region ap-south-1 --filters "Name=tag:Name,Values=MMK" --query "Reservations[].Instances[].PublicIpAddress" --output text )

echo $a

ssh -o StrictHostKeyChecking=no -i $sshkeyvar $ubuntu@$a<<EOF

sudo docker-compose  up -d

if curl localhost:80
then
    echo "Successfully installed"
fi


EOF
