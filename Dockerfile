# Setup UCSM Service Profile Templates
# How to run the script
# docker build -t <image_name> . <— ‘.’ specifies the current working directory
# docker run -it --name ucsm_spt_setup ucsm_spt-img /bin/sh
# cd ucsm_spt_py/
# python deploy_ucsm_spt.py
# (example json config files located in ~/ucsm_spt_py/ucs_configs)

FROM alpine:latest

MAINTAINER Jason Makar <jmakar@mac.com>

RUN apk add --update \
    python3 \
    py3-pip \
&& pip3 install --upgrade pip \
&& pip3 install ucsmsdk \
&& rm -rf /var/cache/apk/*

COPY ucsm_spt_py.zip /
RUN unzip ucsm_spt_py.zip
RUN rm ucsm_spt_py.zip