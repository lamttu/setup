#!/bin/zsh

# https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# This will install aws into /usr/local/bin/ so we will add that to path
export PATH=$PATH:/usr/local/bin


# Create a symbolic link between windows and .kube
ln -s /mnt/c/Users/lam.tu/.kube/ ~/.kube

# Install fzf
sudo apt-get install fzf

# Install awsume
sudo apt-get install python3-pip
python3 -m pip install --user pipx
python3 -m pipx ensurepath
sudo apt-get install python3-venv  
pipx install awsume