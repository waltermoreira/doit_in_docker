FROM ubuntu:14.04

RUN apt-get update -y
RUN apt-get install -y python python-pip
RUN pip install doit ipython
