FROM ubuntu:latest

RUN apt update
#RUN apt install -y python-pip
RUN apt install -y pip

RUN pip install bdfparser

COPY convert.py /

CMD python3 convert.py
