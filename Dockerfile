FROM blang/latex:ctanfull

MAINTAINER Sebastian Clemens <mail@sebastian-clemens.de>

RUN apt-get -y update && \
    apt-get -yq install openssh-client git python3-pygments

RUN wget -O ~/bin/diff-highlight https://raw.githubusercontent.com/git/git/fd99e2bda0ca6a361ef03c04d6d7fdc7a9c40b78/contrib/diff-highlight/diff-highlight && \
    chmod +x diff-highlight && \
    git config --global pager.diff 'diff-highlight | less'

RUN apt-get autoclean
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /data
VOLUME ["/data"]
