FROM anapsix/alpine-java:8_jdk

ENV MULE_HOME=/opt/mule
ENV MULE_VERSION=3.9.0
ENV MULE_MD5=39b773bf20702f614faf30b2ffca4716

RUN apk --no-cache update && \
    apk --no-cache upgrade && \
    apk --no-cache add ca-certificates && \
    update-ca-certificates && \
    apk --no-cache add openssl && \
    apk add --update tzdata && \
    rm -rf /var/cache/apk/*

RUN cd ~ && wget https://repository-master.mulesoft.org/nexus/content/repositories/releases/org/mule/distributions/mule-standalone/$MULE_VERSION/mule-standalone-$MULE_VERSION.tar.gz && \
    echo "$MULE_MD5  mule-standalone-${MULE_VERSION}.tar.gz" | md5sum -c && \
    cd /opt && \
    tar xvzf ~/mule-standalone-$MULE_VERSION.tar.gz && \
    rm ~/mule-standalone-$MULE_VERSION.tar.gz && \
    ln -s /opt/mule-standalone-$MULE_VERSION $MULE_HOME

WORKDIR $MULE_HOME

CMD [ "/opt/mule/bin/mule"]