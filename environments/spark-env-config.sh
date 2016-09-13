#!/bin/bash

BASE_DIR=$(dirname $0)
source $BASE_DIR/dev-start.sh

# Set JDK path
echo 'export PATH=$PATH:/usr/local/java/bin' >> ~/.bashrc

# Set Apache Spark path
echo 'export PATH=$PATH:/usr/local/spark/bin' >> ~/.bashrc

source ~/.bashrc
