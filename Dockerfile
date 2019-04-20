FROM blang/latex:ctanfull

MAINTAINER Sebastian Clemens <mail@sebastian-clemens.de>

RUN apt-get -y update && \
    apt-get -yq install git curl openssh-client

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    npm install -g diff2html-cli

RUN apt-get autoclean && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV HOME /root

WORKDIR /data
VOLUME ["/data"]
