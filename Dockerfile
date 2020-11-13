FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt -qq update

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Kolkata

RUN apt -qq install -y git wget python3 python3-pip python3-venv sudo fakeroot

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .

CMD ["bash","start.sh"]
