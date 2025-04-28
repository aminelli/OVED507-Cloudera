FROM openjdk:8-jre-slim

ENV SQOOP_VERSION=1.4.7
ENV SQOOP_HOME=/opt/sqoop
#ENV FLUME_CONF_DIR=${FLUME_HOME}/conf
ENV PATH=${PATH}:${SQOOP_HOME}/bin

RUN apt-get update && \
    apt-get install -y curl wget tar nano htop && \
    apt-get clean

RUN curl -L https://archive.apache.org/dist/sqoop/${SQOOP_VERSION}/sqoop-${SQOOP_VERSION}.bin__hadoop-2.6.0.tar.gz | tar xz -C /opt && \
    mv /opt/sqoop-${SQOOP_VERSION}.bin__hadoop-2.6.0 /opt/sqoop 

RUN mkdir -p /opt/hadoop
ENV HADOOP_COMMON_HOME=/opt/hadoop
ENV HADOOP_MAPRED_HOME=/opt/hadoop

# Montare qui i driver jdbc di ogni db che si vuole utilizzare
COPY ./lib/mysql-connector-j-8.2.0.jar /opt/sqoop/lib/mysql-connector-j-8.2.0.jar


EXPOSE 16000

CMD ["bash"]