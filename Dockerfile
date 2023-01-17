FROM nvidia/cuda:11.8.0-cudnn8-runtime-ubuntu22.04 as base

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:deadsnakes/ppa \
    && apt-get install -y python3-pip python3.10 \
    && cd /usr/local/bin \
    && ln -s /usr/bin/python3.10 python \
    && pip3 install --upgrade pip



RUN mkdir imgCap_project
WORKDIR /imgCap_project


COPY requirement.txt /imgCap_project/requirement.txt

RUN pip install -r /imgCap_project/requirement.txt
