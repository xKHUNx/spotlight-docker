FROM openjdk:8-jre-alpine

MAINTAINER  DBpedia Spotlight Team <dbp-spotlight-developers@lists.sourceforge.net>

RUN apk add --no-cache curl && \
    mkdir -p /opt/spotlight  && \
    cd /opt/spotlight  && \
    curl -L -O "https://ufpr.dl.sourceforge.net/project/dbpedia-spotlight/spotlight/dbpedia-spotlight-1.0.0.jar"  && \
    curl -L -O "https://ufpr.dl.sourceforge.net/project/dbpedia-spotlight/2016-04/en/model/en_2+2.tar.gz"  && \
    tar xvf en_2+2.tar.gz   && \
    rm  en_2+2.tar.gz && \
    apk del curl

ADD spotlight.sh /bin/spotlight.sh
RUN chmod +x /bin/spotlight.sh

EXPOSE 80

ENTRYPOINT ["sh","/bin/spotlight.sh"]