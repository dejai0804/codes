
PASSWORD=password

cat ~/.ssh/id_rsa.pub | sshpass -p $PASSWORD ssh -o StrictHostKeyChecking=no root@10.0.0.237 'cat - >> /root/.ssh/authorized_keys'
