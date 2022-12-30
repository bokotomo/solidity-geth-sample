FROM ubuntu:latest

# general
WORKDIR /src
RUN apt update && apt-get install -y vim

# ethereum, solc
RUN apt install -y software-properties-common
RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt-get update
RUN apt-get install -y ethereum solc
