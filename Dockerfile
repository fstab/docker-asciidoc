FROM ubuntu:14.10
MAINTAINER Fabian Stäber, fabian@fstab.de

RUN apt-get update && \
    apt-get upgrade -y

# Set the locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt-get install -y \
    asciidoc \
    man

RUN adduser --disabled-login --gecos '' asciidoc
USER asciidoc
WORKDIR /home/asciidoc

# Start in an empty directory
RUN mkdir work
WORKDIR work
