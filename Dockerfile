# Building docker-enter
FROM ubuntu:15.04
RUN apt-get update && apt-get install -y build-essentials wget
COPY ./make.docker-enter.bash /
RUN chmod +x /make.docker-enter.bash
CMD /make.docker-enter.bash
