#! /bin/bash
clear

# Installing Maven
echo # Installing Maven
wget http://mirror.cc.columbia.edu/pub/software/apache/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.tar.gz
tar xzf apache-maven-3.0.5-bin.tar.gz -C /usr/local
cd /usr/local
sudo ln -s apache-maven-3.0.5 maven

# Setting up Maven
echo # Setting up Maven
echo export PATH=/usr/local/maven/bin:$PATH >> /etc/profile.d/maven.sh

# Export giraph / hadoop 
echo # Export giraph / hadoop 
echo export HADOOP_HOME=/usr/hdp/2.3.0.0-2130/hadoop >> $HOME/.bashrc
echo export GIRAPH_HOME=/usr/local/giraph >> $HOME/.bashrc

# Clone giraph
echo # Clone giraph
cd /usr/local/
sudo git clone -b release-1.1 https://github.com/apache/giraph.git
