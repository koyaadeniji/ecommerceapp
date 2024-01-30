FROM ubuntu
RUN apt update -y
RUN apt install mysql -y

CMD tail -f /dev/null
