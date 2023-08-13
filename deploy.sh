#!/bin/bash

set -e

a=$(aws ec2 describe-instances --region ap-south-1 --filters "Name=tag:Name,Values=MMK" --query "Reservations[].Instances[].PublicIpAddress" --output text )

echo "$a"
export SSH="$1"

ssh -o StrictHostKeyChecking=no -i "$SSH" "$ubuntu"@"$a"<<EOF

sudo docker-compose  up -d

sleep 4

echo "SUCCESSFULLY DEPLOYED"

EOF
