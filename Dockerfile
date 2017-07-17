FROM ubuntu:16.04
MAINTAINER Charan Vallala "charan.cse@gmail.com"
RUN apt-get update
RUN apt-get install -y iputils-ping
RUN apt-get install -y net-tools
RUN apt-get install -y python python-pip wget
RUN pip install flask

RUN apt-get install software-properties-common
RUN add-apt-repository ppa:webupd8team/java

RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | tee /etc/apt/sources.list.d/webupd8team-java.list
RUN echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
RUN apt-get update
RUN apt-get install oracle-java8-installer
