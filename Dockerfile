# syntax=docker/dockerfile:1
FROM ubuntu:20.04
RUN apt-get update \
    && DEBIAN_FRONTEND="noninteractive" apt-get -y upgrade \
    && DEBIAN_FRONTEND="noninteractive" apt-get install -y \
           gnuradio build-essential cmake git swig liborc-0.4-dev \
	   python3-pip python3-websocket \
    && pip3 install construct
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
