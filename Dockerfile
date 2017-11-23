FROM ubuntu:latest
MAINTAINER Lempea Developers <developer@lempea.com>


RUN apt-get update -y

RUN apt-get install -y  \
    build-essential \
    fonts-liberation \
    gconf-service \
    libappindicator1 \
    libasound2 \
    libcurl3 \
    libffi-dev \
    libgconf-2-4 \
    libindicator7 \
    libnspr4 \
    libnss3 \
    libpango1.0-0 \
    libssl-dev \
    libxss1 \
    python-dev \
    gcc \
    phantomjs \
    python-pip \
    python-pyasn1 \
    python-pyasn1-modules \
    unzip \
    wget \
    xdg-utils \
    xvfb

RUN pip install robotframework \
    pycrypto \
    robotframework-sshlibrary \
    robotframework-selenium2library \
    robotframework-xvfb \
    marionette_driver \
    robotframework-imaplibrary
