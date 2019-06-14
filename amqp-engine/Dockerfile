FROM docker.digi-texx.vn/anapsix/alpine-java:8_jdk

ENV ACTIVEMQ_VERSION=5.14.3 \
    ACTIVEMQ=apache-activemq-$ACTIVEMQ_VERSION \
    ACTIVEMQ_TCP=61616 \
    ACTIVEMQ_AMQP=5672 \
    ACTIVEMQ_STOMP=61613 \
    ACTIVEMQ_MQTT=1883 \
    ACTIVEMQ_WS=61614 \
    ACTIVEMQ_UI=8161 \
    ACTIVEMQ_HOME=/opt/activemq

EXPOSE $ACTIVEMQ_TCP $ACTIVEMQ_AMQP $ACTIVEMQ_STOMP $ACTIVEMQ_MQTT $ACTIVEMQ_WS $ACTIVEMQ_UI

RUN mkdir -p $ACTIVEMQ_HOME && \
    apk add --update py-pip && \
    # Install python config template generator
    pip install --upgrade pip && \
    pip install envtpl && \
    # Cleanup
    rm -rf /var/cache/apk/*

WORKDIR $ACTIVEMQ_HOME

COPY . $ACTIVEMQ_HOME

#CMD ["/bin/sh", "-c", "bin/activemq console"]
CMD ["./bin/configure-and-run.sh"]