# copy key-pair from local to vpc-a-pub-server server
scp -i ./<key_pair_name>.pem ./<key_pair_name>.pem ec2-user@111.222.333.44:~/.ssh/<key_pair_name>.pem

# Login to vpc-a-pub-server
ssh -i ./<key_pair_name>.pem ec2-user@111.222.333.44
cd ./.ssh

# Login to vpc-a-pri-server
sudo ssh -i ./<key_pair_name>.pem ec2-user@10.0.xx.xx

# Send ping to vpc-b-pri-server
ping 10.1.xx.xx

# Send ping to vpc-c-pri-server
ping 10.2.xx.xx