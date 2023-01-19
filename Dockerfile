FROM nvidia/cuda:12.0.0-devel-ubuntu20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y software-properties-common gcc && \
    add-apt-repository -y ppa:deadsnakes/ppa && \
    apt-get update && apt-get install -y python3.10 python3.10-distutils python3-pip python3-apt



Run apt-get install -y curl && \
    curl -sS https://bootstrap.pypa.io/get-pip.py | python3.10 && \
    update-alternatives --install /usr/bin/python python /usr/bin/python3.10 1



RUN mkdir imgCap_project
WORKDIR /imgCap_project


COPY requirement.txt /imgCap_project/requirement.txt

RUN pip install -r /imgCap_project/requirement.txt

