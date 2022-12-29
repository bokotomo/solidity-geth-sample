FROM ubuntu:latest

WORKDIR /src
RUN apt update && apt-get install -y vim

RUN apt install -y software-properties-common
RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt-get update
RUN apt-get install -y ethereum