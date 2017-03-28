# Setup UCSM Service Profile Templates

FROM alpine:latest

MAINTAINER Jason Makar <jmakar@mac.com>

RUN apk add --update \
    python \
    py-pip \
&& pip install --upgrade pip \
&& pip install ucsmsdk \
&& rm -rf /var/cache/apk/*

COPY ucsm_spt_py.zip /
RUN unzip ucsm_spt_py.zip
RUN rm ucsm_spt_py.zip