FROM openjdk:8-jre-alpine

MAINTAINER  DBpedia Spotlight Team <dbp-spotlight-developers@lists.sourceforge.net>

ENV RELEASE_SERVER    sourceforge.net/projects/dbpedia-spotlight/files
ENV RELEASE_FILENAME  dbpedia-spotlight-1.0.0.jar 
ENV LANGUAGE_MODEL    sv.tar.gz

RUN mkdir -p /opt/spotlight && \
    cd /opt/spotlight && \
    wget "https://$RELEASE_SERVER/spotlight/$RELEASE_FILENAME" && \
    wget "https://$RELEASE_SERVER/2016-10/sv/model/$LANGUAGE_MODEL" && \
    tar xvf $LANGUAGE_MODEL  && \
    rm  $LANGUAGE_MODEL 

ADD spotlight.sh /bin/spotlight.sh
RUN chmod +x /bin/spotlight.sh

EXPOSE 80