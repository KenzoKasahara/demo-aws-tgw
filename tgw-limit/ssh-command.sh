# ###########################################
# <Server Info>
# [srever_name]: [pub ip], [pri ip]
# vpc-a-pub-server: 11.222.333.44, 10.0.xx.xx
# vpc-a-pri-server: -, 10.0.xx.xx
# vpc-b-pri-server: -, 10.1.xx.xx
# vpc-c-pri-server: -, 10.2.xx.xx
# ###########################################


# ###########################################
# Step1: Preparation
# ###########################################
# copy key-pair from local to vpc-a-pub-server server
scp -i ./<key_pair_name>.pem ./<key_pair_name>.pem ec2-user@11.222.333.44:~/.ssh/<key_pair_name>.pem

# Login to vpc-a-pub-server
ssh -i ./<key_pair_name>.pem ec2-user@11.222.333.44
cd ./.ssh

# Copy key-pair from vpc-a-pub-server server to vpc-a-pri-server server
sudo scp -i ./<key_pair_name>.pem ./<key_pair_name>.pem ec2-user@10.0.xx.xx:~/.ssh/<key_pair_name>.pem

# Login to vpc-a-pri-server
sudo ssh -i ./<key_pair_name>.pem ec2-user@10.0.xx.xx
cd ./.ssh


# ###########################################
# Step2: Ping test (vpc-a-pub-server -> vpc-b-pub-server, vpc-a-pub-server -> vpc-c-pub-server)
# ###########################################
# Send ping from vpc-a-pri-server to vpc-b-pri-server
ping 10.1.xx.xx

# Send ping from vpc-a-pri-server to vpc-c-pri-server
ping 10.2.xx.xx


# ###########################################
# Step3: Ping test (vpc-b-pub-server -> vpc-a-pub-server, vpc-b-pub-server -> vpc-c-pub-server)
# ###########################################
# Login to vpc-b-pri-server
sudo ssh -i ./<key_pair_name>.pem ec2-user@10.1.xx.xx

# Send ping from vpc-b-pri-server to vpc-a-pri-server
ping 10.0.xx.xx

# Send ping from vpc-b-pri-server to vpc-c-pri-server
ping 10.2.xx.xx