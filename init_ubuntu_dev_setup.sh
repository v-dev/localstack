#!/bin/bash
# taken from: https://github.com/v-dev/localstack/tree/master/doc/developer_guides
# on May 15, 2021
# assuming Ubuntu 20.04 LTS which has python3.8

update-alternatives --install /usr/bin/python python /usr/bin/python3.8 2

apt install libsasl2-dev -y

apt-get install python3-pip -y
update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 2

pip install virtualenv

apt-get install openjdk-11-jdk -y

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
apt-get install -y nodejs

apt install maven -y

wget https://services.gradle.org/distributions/gradle-6.7-bin.zip -O /opt/gradle-6.7-bin.zip
unzip /opt/gradle-6.7-bin.zip -d /opt/

apt install curl -y

mkdir /opt/terraform
curl -L -o /opt/terraform/terraform.zip https://releases.hashicorp.com/terraform/0.13.4/terraform_0.13.4_linux_amd64.zip
(cd /opt/terraform && unzip -q /opt/terraform/terraform.zip && rm /opt/terraform/terraform.zip)

echo "export PATH=$PATH:/opt/gradle-6.7/bin:/opt/terraform" >> ~/.bashrc && source ~/.bashrc
