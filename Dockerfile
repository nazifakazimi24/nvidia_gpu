FROM nvidia/cuda:11.3.1-base
# FROM nvidia/cuda:11.2.2-cudnn8-devel-ubuntu18.04

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-get update
RUN apt-get install -y python3
RUN apt install -y python3-pip
RUN pip3 install torch==1.11.0+cu113 torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu113
# RUN pip3 install torch==1.9.0+cu111 torchvision==0.10.0+cu111 torchaudio==0.9.0 -f https://download.pytorch.org/whl/torch_stable.html



# ENV PYTHONPATH "/src"
# RUN mkdir imgCap_project
WORKDIR ~


# COPY requirement.txt ~/requirement.txt

# RUN pip install -r ~/requirement.txt
