FROM maven:3-jdk-8

COPY entrypoint.sh /

RUN echo "deb https://dl.bintray.com/rabbitmq/debian stretch main" | tee /etc/apt/sources.list.d/bintray.rabbitmq.list && \
    wget -O- https://dl.bintray.com/rabbitmq/Keys/rabbitmq-release-signing-key.asc | apt-key add -                     && \
    apt-get update                                                                                                     && \
    apt-get install -qqy rabbitmq-server                                                                               && \
    apt-get clean

EXPOSE 4369 5671 5672 25672
ENTRYPOINT [ "/entrypoint.sh" ]
