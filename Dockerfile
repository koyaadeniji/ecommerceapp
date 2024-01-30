FROM centos:7
RUN yum update -y
RUN yum install httpd -y

CMD tail -f /dev/null
