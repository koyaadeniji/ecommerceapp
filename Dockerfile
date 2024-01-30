FROM ubuntu
RUN yum update -y
RUN yum install mysql -y

CMD tail -f /dev/null
