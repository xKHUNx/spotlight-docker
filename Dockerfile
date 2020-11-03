FROM java:openjdk-8-jre

MAINTAINER  DBpedia Spotlight Team <dbp-spotlight-developers@lists.sourceforge.net>

ENV RELEASE_SERVER    model.dbpedia-spotlight.org
ENV RELEASE_FILENAME  dbpedia-spotlight-0.7.1.jar

RUN echo "deb [check-valid-until=no] http://cdn-fastly.deb.debian.org/debian jessie main" > /etc/apt/sources.list.d/jessie.list

RUN echo "deb [check-valid-until=no] http://archive.debian.org/debian jessie-backports main" > /etc/apt/sources.list.d/jessie-backports.list

RUN sed -i '/deb http:\/\/deb.debian.org\/debian jessie-updates main/d' /etc/apt/sources.list

RUN apt-get -o Acquire::Check-Valid-Until=false update

RUN mkdir -p /mnt/dbpedia && \
    mkdir -p /mnt/dbpedia/spotlight && \
    cd /mnt/dbpedia && \
    curl -O "http://$RELEASE_SERVER/$RELEASE_FILENAME" && \
    apt-get -o Acquire::Check-Valid-Until=false update && \
    cd  /mnt/dbpedia && \
    apt-get install -y git && \
    git clone https://github.com/dbpedia-spotlight/lucene-quickstarter.git
    


