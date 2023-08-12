#!/bin/bash

#Create  instance infrastructure 

terraform init && terraform apply --auto-approve
sleep 5

# to get public IP and store the variable 
a=$(aws ec2 describe-instances --region ap-south-1 --filters "Name=tag:Name,Values=MMK" --query "Reservations[].Instances[].PublicIpAddress" --output text )

b=$(aws ec2 describe-instances --region ap-south-1 --filters "Name=tag:Name,Values=MUTHU" --query "Reservations[].Instances[].PublicIpAddress" --output text )

echo $a
echo $b

echo $a $b | cat > ipaddress.txt

echo "Terraform Exceute Successfully"




