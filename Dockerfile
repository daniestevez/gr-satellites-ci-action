# syntax=docker/dockerfile:1
FROM ubuntu:24.04
RUN apt-get update \
    && DEBIAN_FRONTEND="noninteractive" apt-get -y upgrade \
    && DEBIAN_FRONTEND="noninteractive" apt-get install -y \
           gnuradio build-essential cmake git swig liborc-0.4-dev \
	   python3-pip libspdlog-dev python3-construct python3-requests \
	   libsndfile1-dev python3-websocket
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
