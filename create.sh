#!/bin/bash

#Create  instance infrastructure 

terraform init && terraform $option -auto-approve

# to get public IP and store the variable 
a=$(aws ec2 describe-instances --region ap-south-1 --filters "Name=tag:Name,Values=MMK" --query "Reservations[].Instances[].PublicIp" --output text )

b=$(aws ec2 describe-instances --region ap-south-1 --filters "Name=tag:Name,Values=MUTHU" --query "Reservations[].Instances[].PublicIp" --output text )

echo $a
echo $b

echo $a $b | cat > ipaddress.txt

echo "Terraform Exceute Successfully"

sleep 5

