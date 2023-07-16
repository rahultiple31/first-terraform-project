
# GitHub sources code URL

https://github.com/RahulTiple31/first-terraform-project.git


# create eks cluster using terraform

## terraform files

eks_cluster.tf

eks_node_group.tf

iam_role.tf

internetgw.tf

provider.tf

rout.tf

sg.tf

subnet.tf

vpc.tf

## terraform command

terraform init
terraform fmt
terraform validate
terrafrom plan
terraform apply


# following package install on jenkins server

java -version   ---> 17.0.7
maven -version  ---> 3.9.2

## install git
sudo yum install git -y

## install terraform

sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform

## install docker

sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

## install kubectl

sudo curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.23.6/bin/linux/amd64/kubectl
sudo chmod +x ./kubectl
sudo mkdir -p $HOME/bin && sudo cp ./kubectl $HOME/bin/kubectl && export PATH=$PATH:$HOME/bin


# below setup on jenkins dashboard

## plug-in installed in Jenkins

git plug-in
maven plug-in
docker plug-in
terraform plug-in

## add credentials

Jankins dashbord -> manage jenkins -> Manage credentials -> globle -> add credentials -> GitHub

Jankins dashbord -> manage jenkins -> Manage credentials -> globle -> add credentials -> Dockerhub

## create jenkins pipelinede

create pipeline job
create declarative pipeline
clone github repository
build maven
copy .jar file into the Dockerfile
create docker image from Dockerfile
login dockerhub
pull docker image to dockerhub repository
springboot application deploy on EKS using aws cli and dockerhub image




