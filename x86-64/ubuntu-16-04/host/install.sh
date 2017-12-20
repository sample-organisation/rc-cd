#!/bin/bash -e

# aws cli install
sudo pip install awscli
sudo cp ~/.local/bin/aws /usr/bin/

# install az client
# https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest#a-namelinuxinstall-on-linux-without-a-package-manager
sudo apt-get update && sudo apt-get install -y python libssl-dev libffi-dev python-dev build-essential
curl -L https://aka.ms/InstallAzureCli | bash
exec -l $SHELL

# gcloud
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update && sudo apt-get install google-cloud-sdk

# jfrog
curl -fL https://getcli.jfrog.io | sh
sudo cp ./jfrog /usr/bin

# kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
