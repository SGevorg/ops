#!/bin/bash

sudo apt-get update

### ------------ EMACS 24 ---------------

sudo apt-get -y install emacs

### ------------ JDK 1.7 -----------------
# Download and install java
wget --no-cookies \
     --no-check-certificate \
     --header "Cookie: oraclelicense=accept-securebackup-cookie" \
     "http://download.oracle.com/otn-pub/java/jdk/7u55-b13/jdk-7u55-linux-x64.tar.gz" \
     -O jdk-7-linux-x64.tar.gz
sudo mkdir /usr/local/java
mkdir ~/temp-java

echo "Installing JDK 1.7... "
echo "Unpacking JDK... "

tar -xzvf jdk-7-linux-x64.tar.gz -C ~/temp-java
JAVA_DIR=$(ls -tr ~/temp-java/|grep jdk|head -n 1)

echo "JDK unpacked into $JAVA_DIR ... "

sudo mv ~/temp-java/$JAVA_DIR/* /usr/local/java/
rm -rf ~/temp-java
rm -rf jdk-7-linux-x64.tar.gz

echo "export PATH=$PATH:/usr/local/java/bin" >> /home/vagrant/.bashrc
 
echo "Java successfully installed... "

### -------------- SCALA -------------
# install scala
echo "Installing scala... "
sudo apt-get remove scala-library scala
wget www.scala-lang.org/files/archive/scala-2.11.8.deb
dpkg -i scala-2.11.8.deb
apt-get install scala

### -------------- SBT ---------------
# install sbt
echo "Installing sbt... "
wget https://dl.bintray.com/sbt/debian/sbt-0.13.7.deb
dpkg -i sbt-0.13.7.deb
apt-get install sbt

### ------------- APACHE SPARK 2.0 ---------- 
# install spark 2.0
echo "Installing spark 2.0... "
wget http://d3kbcqa49mib13.cloudfront.net/spark-2.0.0-bin-hadoop2.7.tgz
tar xvf spark-2.0.0-bin-hadoop2.7.tgz
echo "Moving spark into /usr/local/spark"
mv spark-2.0.0-bin-hadoop2.7 /usr/local/spark
rm -rf spark-2.0.0-bin-hadoop2.7.tgz
rm -rf spark-2.0.0-bin-hadoop2.7

# Add Path to spark to ~/.bashrc
echo "export PATH=$PATH:/usr/local/spark/bin" >> /home/vagrant/.bashrc

echo "Spark successfully installed... "
