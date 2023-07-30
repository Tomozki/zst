FROM debian:11
FROM python:3.10.5-slim-buster
FROM nikolaik/python-nodejs:latest

WORKDIR /zetsu/

RUN python3 -m pip install -U pip
RUN apt-get install -y wget python3-pip curl bash neofetch ffmpeg software-properties-common

COPY requirements.txt .

RUN pip3 install wheel
RUN pip3 install -U -r requirements.txt

COPY . .
CMD ["python3", "-m", "ZetsuMusic"]
