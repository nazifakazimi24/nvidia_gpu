FROM nvidia/cuda:11.3.1-base

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-get update
RUN apt-get install -y python3
RUN apt install -y python3-pip
RUN pip3 install torch==1.11.0+cu113 torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu113
RUN pip3 install pandas simpletransformers


# ENV PYTHONPATH "/src"
# RUN mkdir imgCap_project
WORKDIR ~


COPY requirement.txt ~/requirement.txt

RUN pip install -r ~/requirement.txt
