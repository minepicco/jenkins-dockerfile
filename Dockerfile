From ubuntu:18.04

RUN apt-get update && apt-get install wget -y
RUN apt-get install -y openjdk-8-jdk
RUN apt-get install -y gnupg gnupg2 gnupg1
RUN wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | apt-key add -
RUN echo "deb https://pkg.jenkins.io/debian-stable binary/" >> /etc/apt/sources.list
RUN apt-get update && apt-get install jenkins -y
ENTRYPOINT ["sh", "-c", "/etc/init.d/jenkins start", "BACKGROUND"]

EXPOSE 8080 50000
