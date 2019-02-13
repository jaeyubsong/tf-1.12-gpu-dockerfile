# Docker image tf-1.12-gpu with keras
# Download base image 
FROM 	tensorflow/tensorflow:1.12.0-devel-gpu-py3
MAINTAINER	jsong0327@naver.com

# Update
RUN	apt-get -y update

# Install vim
RUN	apt-get install -y vim

# Setup for keras
RUN	apt-get install -y build-essential cmake git unzip pkg-config libopenblas-dev liblapack-dev

RUN	apt-get install -y python-yaml
RUN	apt-get install -y python-h5py

# Optional step for visualizing keras
RUN	apt-get install -y graphviz
RUN	pip install pydot-ng

# Packge to run code in keras book
RUN	apt-get install -y python-opencv

# Install Keras
RUN	pip install keras

# Initial folders
RUN	mkdir -p /notebooks

# Start Jupyter Notebook
# CMD jupyter notebook --ip 0.0.0.0 --no-browser --allow-root --notebook-dir=/notebooks
