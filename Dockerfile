FROM ubuntu
RUN apt update -y
RUN apt install nginx -y

CMD tail -f /dev/null
