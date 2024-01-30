FROM ubuntu
RUN apt update -y
RUN apt install mariadb* -y

CMD tail -f /dev/null
