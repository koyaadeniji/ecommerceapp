FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y

CMD tail -f /dev/null
