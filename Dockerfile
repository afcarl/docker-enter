# Building docker-enter
FROM ubuntu:15.04
RUN apt-get update && apt-get install -y build-essential wget
COPY ./make.docker-enter.bash /
RUN chmod +x /make.docker-enter.bash
VOLUME /target
CMD /make.docker-enter.bash
