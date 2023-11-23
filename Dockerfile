FROM ubuntu:20.04

MAINTAINER Keerthan Ashok

LABEL "Project"="Jenkins"

RUN apt-get update && apt-get install -y openjdk-11-jdk && apt-get install -y wget && wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.50/bin/apache-tomcat-9.0.50.tar.gz && tar -zxvf apache-tomcat-9.0.50.tar.gz

WORKDIR /apache-tomcat-9.0.50

COPY /home/keerthan/tomcat/tomcat1/webapps/Amazon.war /var/lib/jenkins/workspace/docker-task/apache-tomcat-9.0.50/webapps/

EXPOSE 8080

CMD ["bin/catalina.sh", "run"]
