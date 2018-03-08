#!/bin/bash

# only run if this is the first time the instance has been booted - check
#       for existence of the anaconda3 directory
if [-d "$/home/user/anaconda3"]; then
    exit 0
fi

# wait before commencing setup
sleep 20

# install Python dev tools
apt-get update
apt-get install -y \
    build-essential python3-setuptools python3-dev git

# execute Anaconda installation as user
sudo -u user bash << EOF
cd /home/user

# install Anaconda3
wget https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
bash Anaconda3-5.0.1-Linux-x86_64.sh -b -p /home/user/anaconda3

# permanently change the python default path
echo "export PATH=/home/user/anaconda3/bin:\$PATH" >> .profile
source .profile

# install scikit-learn
conda install -y scikit-learn

# install tensorflow-cpu
pip install tensorflow

EOF
