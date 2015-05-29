FROM ubuntu:vivid
MAINTAINER pkadetiloye 
RUN apt-get update; apt-get install -y unzip openjdk-8-jre-headless wget supervisor docker.io openssh-server
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN echo 'root:pkadetiloye' | chpasswd
RUN mkdir /var/run/sshd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

EXPOSE 22
