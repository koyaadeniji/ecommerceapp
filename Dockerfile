FROM centos:centos7
RUN rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
RUN sudo yum update -y
RUN yum install docker -y



CMD tail -f /dev/null



# FROM ubuntu
# RUN apt update && apt install apache2 -y
# CMD tail -f /dev/null
