FROM centos:7
RUN yum update && yum install httpd -y


CMD tail -f /dev/null
