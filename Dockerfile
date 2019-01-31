From ubuntu:18.04

RUN apt-get update && apt-get install wget -y
RUN wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | apt-key add -
RUN echo "deb https://pkg.jenkins.io/debian-stable binary/" >> /etc/apt/sources.list
RUN apt-get update && apt-get install jenkins -y

EXPOSE 8080 50000
