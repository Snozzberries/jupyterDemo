# Manually start docker host
sudo yum update
sudo yum install docker
sudo systemctl start docker

# Build jupyterhub image
cd ~/jupyterhub
sudo docker build -t jupyterhub .

# Build dotnet image
cd ~/dotnet
sudo docker build -t dotnet .
aws ecr get-login-password --region us-east-1 | sudo docker login --username AWS --password-stdin 012345670123.dkr.ecr.us-east-1.amazonaws.com
sudo docker tag dotnet:latest 012345670123.dkr.ecr.us-east-1.amazonaws.com/dotnet:latest
sudo docker push 012345670123.dkr.ecr.us-east-1.amazonaws.com/dotnet:latest

# Manually start jupyterhub image
sudo docker run -p 8888:8000 jupyterhub &

#AWS
#Setup target group
# Map to instance:8888
# Health Check HTTP:8888 HTTP302
#Setup ELB
# Edit SG to allow HTTPS inbound
# Listener 443 to target group
#Setup ecr
# Create repo and push
#Setup ecs
# Create cluster and task