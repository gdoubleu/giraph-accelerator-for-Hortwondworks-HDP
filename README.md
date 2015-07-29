# Introduction

This is a turnkey project for people interested in compiling Giraph 1.1.0 on Hortonworks (HDP) 2.3. It consists in a two-part bash script that does everything for you right from when the HDP Sanbox boots up. 

The first part consists in installing Maven (v3.+), setting up environment variables and cloning Giraph 1.1.0. 

The second part consists in compiling Giraph and smoketesting it by submitting a Map Reduce job. 

# How to execute these scripts? 

1. SSH to your Sandbox and copy both fles
2. On your Sandbox, run the first script: sh 1-setup_giraph_prerequisites.sh <path to hadoop>. For instance: sh 1-setup_giraph_prerequisites.sh /usr/hdp/2.3.0.0-2557/hadoop/
3. Logout ("logout" at the SSH prompt)
4. SSH again and run the second script: sh 2-compile_and_smoketest_giraph.sh

