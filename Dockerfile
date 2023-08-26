FROM ubuntu:latest

RUN apt-get -y update;  \
    apt-get -y install g++; \
    apt-get -y install libgtest-dev; \
    apt-get -y install valgrind; \
    apt-get -y install git; \
    apt-get -y install make; \
    apt-get -y install cmake; \
    mkdir -p /usr/src/;

RUN cd /usr/src/googletest && \
    cmake . && \
    cmake --build . --target install

WORKDIR /usr/src/

COPY . .

ENTRYPOINT ["/bin/bash", "-l", "-c", "make valgrind"]
