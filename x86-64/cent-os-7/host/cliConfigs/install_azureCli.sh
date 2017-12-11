#Import the Microsoft repository key:
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

#Create local azure-cli repository information:
sudo sh -c 'echo -e "[azure-cli]\nname=Azure CLI\nbaseurl=https://packages.microsoft.com/yumrepos/azure-cli\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/azure-cli.repo'

#Update the yum package index and install:
yum check-update
sudo yum install azure-cli