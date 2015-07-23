# giraph_accelerator

This is a two-part bash script for people intereted in compiling Giraph 1.1.0 on Hortonworks (HDP) 2.3. 

The first part consists in installing Maven (v3.+), setting up environment variables and cloning Giraph 1.1.0. 

The second part consists in compiling Giraph and smoketesting it by submitting a Map Reduce job. 

# How to execute these scripts? 

1. SSH to your Sandbox and copy both fles
2. On your Sandbox, run the first script: sh 1-setup_giraph_prerequisites.sh
3. Logout
4. SSH again and run the second script: sh 2-compile_and_smoketest_giraph.sh

