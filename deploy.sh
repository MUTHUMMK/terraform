#!/bin/bash

echo $a

ssh -o StrictHostKeyChecking=no -i $sshkeyvar $ubuntu@$a<<EOF

sudo docker-compose  up -d

if curl localhost:80
then
    echo "Successfully installed"
fi

EOF
