# syntax=docker/dockerfile:1
FROM ubuntu:20.04
RUN apt-get update \
    && DEBIAN_FRONTEND="noninteractive" apt-get install -y software-properties-common \
    && add-apt-repository ppa:gnuradio/gnuradio-releases-3.9 \
    && apt-get update \
    && DEBIAN_FRONTEND="noninteractive" apt-get -y upgrade \
    && DEBIAN_FRONTEND="noninteractive" apt-get install -y \
           gnuradio build-essential cmake git swig liborc-0.4-dev \
	   python3-pip libsndfile1-dev \
    && pip3 install construct
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
