FROM ubuntu:16.04
MAINTAINER Charan Vallala "charan.cse@gmail.com"
RUN apt-get update
RUN apt-get install -y iputils-ping
RUN apt-get install -y net-tools
RUN apt-get install -y python python-pip wget
RUN pip install flask