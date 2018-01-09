FROM  python:2.7-alpine

RUN apk add --update xvfb;
COPY requirements.txt /tmp/requirements.txt
RUN  pip install -r /tmp/requirements.txt

COPY tests_robot /tests

ENTRYPOINT [ "pybot" ]
