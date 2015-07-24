
#! /bin/bash
clear

# Compile Giraph
echo # Compile Giraph
source $HOME/.bashrc
cd $GIRAPH_HOME
mvn -Phadoop_2 -Dhadoop.version=2.6.0 package -e -DskipTests=true

# Create test file
echo # Create test file
echo [0,0,[[1,1],[3,3]]] >> /tmp/tiny_graph.txt
echo [1,0,[[0,1],[2,2],[3,1]]] >> /tmp/tiny_graph.txt
echo [2,0,[[1,2],[4,4]]] >> /tmp/tiny_graph.txt
echo [3,0,[[0,3],[1,1],[4,4]]] >> /tmp/tiny_graph.txt
echo [4,0,[[3,4],[2,4]]] >> /tmp/tiny_graph.txt

# Create DFS folder
echo # Create test file
hadoop fs -mkdir -p /user/hduser/input

# Move local file to DFS 
echo # Move local file to DFS 
hadoop fs -copyFromLocal /tmp/tiny_graph.txt /user/hduser/input/tiny_graph.txt

# Submit job
echo # Submit job
hadoop jar /usr/local/giraph/giraph-examples/target/giraph-examples-1.1.0-for-hadoop-2.6.0-jar-with-dependencies.jar org.apache.giraph.GiraphRunner org.apache.giraph.examples.SimpleShortestPathsComputation -vif org.apache.giraph.io.formats.JsonLongDoubleFloatDoubleVertexInputFormat -vip /user/hduser/input/tiny_graph.txt -vof org.apache.giraph.io.formats.IdWithValueTextOutputFormat -op /user/hduser/output/shortestpaths -w 1 -ca giraph.SplitMasterWorker=false
