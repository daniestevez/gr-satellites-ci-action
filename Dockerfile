# syntax=docker/dockerfile:1
FROM ubuntu:latest
RUN apt-get update \
    && DEBIAN_FRONTEND="noninteractive" apt-get install -y software-properties-common \
    && add-apt-repository ppa:gnuradio/gnuradio-releases \
    && apt-get update \
    && DEBIAN_FRONTEND="noninteractive" apt-get -y upgrade \
    && DEBIAN_FRONTEND="noninteractive" apt-get install -y \
           gnuradio build-essential cmake git swig liborc-0.4-dev \
	   python3-pip python3-construct
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
