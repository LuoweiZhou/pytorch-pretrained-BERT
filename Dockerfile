FROM pytorch/pytorch:1.1.0-cuda10.0-cudnn7.5-devel

COPY . /workspace/pytorch-pretrained-BERT

RUN git clone https://github.com/NVIDIA/apex.git && cd apex && python setup.py install --cuda_ext --cpp_ext

RUN pip install pytorch-pretrained-bert

WORKDIR /workspace/pytorch-pretrained-BERT
