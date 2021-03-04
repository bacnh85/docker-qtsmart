FROM ubuntu:14.04

ARG PUID=1000
ARG PGID=1000

# Update packages
RUN rm /bin/sh && ln -s bash /bin/sh \ 
     # add user package
     && apt-get update \
     && apt-get install -y software-properties-common \ 
     && add-apt-repository ppa:openjdk-r/ppa \
     &&  apt-get update && apt-get install -y \
     git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev \
     libc6-dev lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev \
     libgl1-mesa-dev g++-multilib mingw32 tofrodos python-markdown libxml2-utils xsltproc \
     # Extra pkg
     openjdk-8-jdk vim \
     # Clean up
     && rm -rf /var/lib/apt/lists/*

# Setup the environment
RUN locale-gen en_US.UTF-8 && update-locale LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

WORKDIR /opt
VOLUME [ "/opt" ]

COPY entrypoint.sh /
ENTRYPOINT ["sh","/entrypoint.sh"]