# CentOS w/ Oracle JDK & Maven
FROM tantalic/centos-oracle-jdk:6.8_1.8u65
MAINTAINER Kevin Stock <kevinstock@tantalic.com>

ENV MAVEN_VERSION 3.3.9

RUN wget http://mirrors.ocf.berkeley.edu/apache/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz -O /tmp/apache-maven-$MAVEN_VERSION-bin.tar.gz && \
    tar -xvzf /tmp/apache-maven-$MAVEN_VERSION-bin.tar.gz -C /opt && \
    mkdir /project

ENV PATH=/opt/apache-maven-$MAVEN_VERSION/bin:$PATH

VOLUME /project
WORKDIR /project

ENV MAVEN_CONFIG "/root/.m2"
VOLUME "/root/.m2"

CMD "mvn"
