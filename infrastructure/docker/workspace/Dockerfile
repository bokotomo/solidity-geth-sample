FROM amd64/ubuntu:latest

# general
WORKDIR /src
RUN apt update

# ethereumv
RUN apt install -y software-properties-common
RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y ethereum solc