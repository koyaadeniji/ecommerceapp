FROM centos:centos7
RUN yum install -y epel-release && yum update -y && yum install httpd -y

CMD tail -f /dev/null




# FROM ubuntu
# RUN apt update && apt install apache2 -y
# CMD tail -f /dev/null
