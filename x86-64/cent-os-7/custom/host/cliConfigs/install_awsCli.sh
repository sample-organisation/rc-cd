#Download AWS CLI Bundler
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
#install unzip
sudo yum install unzip
#unzip aws-cli bundle
unzip awscli-bundle.zip
#install
./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
