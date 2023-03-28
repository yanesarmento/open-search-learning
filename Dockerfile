FROM debian:bullseye-slim

RUN mkdir /home/Loka
WORKDIR /home/Loka

RUN apt-get clean all
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get update


ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Install basic elements
RUN apt-get install curl wget git gcc make libffi-dev gnupg software-properties-common ssh pdsh -y
RUN apt-get install vim -y
RUN apt-get install cron -y

# Install Python v3.9
RUN apt-get update
RUN apt-get install python3 python3-dev python3-pip zip -y
RUN ln -s /usr/bin/python3 /usr/bin/python

RUN pip3 install jupyterlab

# Install python packages
RUN pip3 install sqlalchemy trino pandas
