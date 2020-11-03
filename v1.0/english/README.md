Docker container image with [DBpedia Spotlight in English](http://dbpedia.org)

### How to run

Assume your docker host is localhost and HTTP public port is 2222 (change these values if you need).

Run

    docker build -f Dockerfile -t english_spotlight .

and finally

    docker run -itd --restart unless-stopped --name spotlight_en -p 2222:80 english_spotlight spotlight.sh

    cd /d/Python/spotlight-docker/v1.0/english/
    docker run -it -e JAVA_OPTS='-Xms8g' -p 2222:80 english_spotlight    

OpenJDK 64-Bit Server VM warning: INFO: os::commit_memory(0x00000000ede19000, 303984640, 0) failed; error='Out of memory' (errno=12)
#
# There is insufficient memory for the Java Runtime Environment to continue.
# Native memory allocation (mmap) failed to map 303984640 bytes for committing reserved memory.
# An error report file with more information is saved as:
# //hs_err_pid6.log