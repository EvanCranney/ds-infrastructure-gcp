#!/bin/bash

# install Anaconda3
wget https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
bash Anaconda3-5.0.1-Linux-x86_64.sh -b -p $HOME/Anaconda3

# install scikit-learn
export PATH=$HOME/anaconda3/bin:$PATH
conda install -y scikit-learn
