# Get UCS Firmware from CCO

FROM alpine:latest

MAINTAINER Jason Makar <jmakar@mac.com>

RUN apk add --update \
    python \
    py-pip \
&& pip install --upgrade pip \
&& pip install ucsmsdk \
&& rm -rf /var/cache/apk/*

COPY ucs_example_json.zip /
RUN unzip ucs_example_json.zip
RUN rm ucs_example_json.zip

COPY ucs_ppt_py.zip /
RUN unzip ucs_ppt_py.zip
RUN rm ucs_ppt_py.zip
