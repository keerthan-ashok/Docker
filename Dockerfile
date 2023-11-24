FROM ubuntu:20.04

MAINTAINER Keerthan Ashok

LABEL "Project"="Jenkins"

RUN apt-get update && apt-get install -y openjdk-11-jdk && apt-get install -y wget && wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.96/bin/apache-tomcat-8.5.96.tar.gz && tar -zxvf apache-tomcat-9.0.50.tar.gz

RUN cp -r /home/keerthan/tomcat/tomcat1/webapps/ /var/lib/jenkins/workspace/docker-task/

WORKDIR /apache-tomcat-9.0.50

COPY Amazon.war .

EXPOSE 8080

CMD ["bin/catalina.sh", "run"] 
