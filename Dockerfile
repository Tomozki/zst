#Python based docker image
FROM nikolaik/python-nodejs:python3.9-nodejs18

RUN apt-get update && apt-get upgrade -y

#Installing Requirements
RUN apt-get install -y ffmpeg python3-pip opus-tools

#Updating pip
RUN python3.9 -m pip install -U pip

COPY . .

RUN python3.9 -m pip install -U -r requirements.txt

#Running VCBot
CMD bash start
