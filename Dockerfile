FROM ubuntu:18.04

ENV VERSION=7.0.1

RUN apt-get update -y && \
    apt-get install -y \
    wget \
    libzmq3-dev \
    libpcsclite-dev 

ARG USER=docker
ENV HOME /home/$USER

RUN addgroup -S $USER && adduser -S -G $USER $USER 

USER $USER
WORKDIR $HOME

RUN mkdir /data

RUN wget https://github.com/safex/safexcore/releases/download/$VERSION/safexd-linux-$VERSION
RUN chmod +x safexd-linux-$VERSION

EXPOSE 17400-17403/tcp

LABEL author="Safex.Ninja"
LABEL core-version=$VERSION
LABEL description="Running Safex Core Node"
LABEL info="See https://github.com/safex/safexcore/"

CMD ./safexd-linux-$VERSION --in-peers=50 --out-peers=50 --data-dir=/data

