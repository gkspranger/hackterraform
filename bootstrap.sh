#!/bin/bash

# setup
yum clean all

# install docker
yum remove -y \
docker \
docker-client \
docker-client-latest \
docker-common \
docker-latest \
docker-latest-logrotate \
docker-logrotate \
docker-engine
yum install -y \
yum-utils \
device-mapper-persistent-data \
lvm2
yum-config-manager \
--add-repo \
https://download.docker.com/linux/centos/docker-ce.repo
yum install -y \
docker-ce \
docker-ce-cli \
containerd.io
systemctl enable docker
systemctl start docker

# install terraform
yum install -y \
zip \
unzip
wget -q https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip
unzip terraform*.zip
mv terraform /bin/.
