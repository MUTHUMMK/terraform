scp -o StrictHostKeyChecking=no -i  $sshkeyvar docker-compose.yml ubuntu@43.205.207.17:/home/ubuntu
ssh -o StrictHostKeyChecking=no -i $sshkeyvar ubuntu@43.205.207.17
ls
pwd
