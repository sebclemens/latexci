FROM blang/latex:ctanfull

MAINTAINER Sebastian Clemens <mail@sebastian-clemens.de>

RUN apt-get -y update && \
    apt-get -yq install git openssh-client python3-pygments

RUN apt-get autoclean
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV HOME /root

WORKDIR /data
VOLUME ["/data"]
