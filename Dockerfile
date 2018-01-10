FROM maven:3-jdk-8
RUN echo 'deb http://www.rabbitmq.com/debian/ testing main' | tee /etc/apt/sources.list.d/rabbitmq.list
RUN wget -O- https://www.rabbitmq.com/rabbitmq-release-signing-key.asc | apt-key add -
RUN apt-get update
RUN apt-get install -y rabbitmq-server

EXPOSE 4369 5671 5672 25672
ENTRYPOINT [ "service", "rabbitmq-server", "start" ]
