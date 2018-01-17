FROM ubuntu:xenial
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
       xvfb \
       && \
    pip install --upgrade pip

RUN pip install robotframework
RUN pip install pycrypto

RUN pip install robotframework-sshlibrary
RUN pip install robotframework-selenium2library
RUN pip install robotframework-xvfb
RUN pip install marionette_driver
RUN pip install robotframework-imaplibrary



RUN apt-get install -y wget
RUN apt-get install -y firefox
RUN apt-get install -y xvfb

# Install Google Chrome

RUN wget http://mirror.glendaleacademy.org/chrome/pool/main/g/google-chrome-stable/google-chrome-stable_53.0.2785.143-1_amd64.deb
RUN dpkg -i google-chrome*.deb

RUN wget -N http://chromedriver.storage.googleapis.com/2.24/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip
RUN chmod +x chromedriver
RUN mv -f chromedriver /usr/local/share/chromedriver
RUN ln -sf /usr/local/share/chromedriver /usr/local/bin/chromedriver
RUN ln -sf /usr/local/share/chromedriver /usr/bin/chromedriver

# Install geckodriver
RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.19.0/geckodriver-v0.19.0-linux64.tar.gz
RUN tar xfz geckodriver-v0.19.0-linux64.tar.gz
RUN cp geckodriver /usr/bin/

ADD run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh

CMD ["run.sh"]
