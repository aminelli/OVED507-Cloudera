FROM openjdk:8-jdk-alpine

ENV FLUME_VERSION=1.11.0
ENV FLUME_HOME=/opt/flume
#ENV FLUME_CONF_DIR=${FLUME_HOME}/conf
ENV PATH=${PATH}:${FLUME_HOME}/bin

RUN apk add --no-cache wget tar bash nano htop

RUN mkdir -p /opt && \
wget https://downloads.apache.org/flume/${FLUME_VERSION}/apache-flume-${FLUME_VERSION}-bin.tar.gz -O /tmp/flume.tar.gz && \
tar -xvzf /tmp/flume.tar.gz -C /opt && \
mv /opt/apache-flume-${FLUME_VERSION}-bin /opt/flume && \
rm /tmp/flume.tar.gz

RUN mkdir -p /opt/flume/logs

WORKDIR /opt/flume

EXPOSE 4444

CMD ["bash"]