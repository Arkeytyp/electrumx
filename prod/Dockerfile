FROM ubuntu:18.04

ADD . /electrumx

# TODO: make a base image of this for faster builds
RUN apt-get update && \
    apt-get -y install git python3.7 python3.7-dev python3-pip librocksdb-dev libsnappy-dev libz-dev libbz2-dev libgflags-dev liblz4-dev && \
    cd /tmp && git clone https://github.com/miketout/verushashpy.git && cd verushashpy && python3.7 setup.py install && \
    cd /electrumx && pip3 install aiohttp pylru && python3.7 setup.py install

ENV SERVICES="tcp://:50001"
ENV COIN=BitcoinSV
ENV DB_DIRECTORY=/db
ENV DAEMON_URL="http://username:password@hostname:port/"
ENV ALLOW_ROOT=true
ENV DB_ENGINE=leveldb
ENV MAX_SEND=10000000
ENV BANDWIDTH_UNIT_COST=50000
ENV CACHE_MB=2000

VOLUME /db

RUN mkdir -p "$DB_DIRECTORY" && ulimit -n 1048576

CMD ["/usr/bin/python3.7", "/usr/local/bin/electrumx_server"]
