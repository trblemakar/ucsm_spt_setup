# Get UCS Firmware from CCO

FROM alpine:latest

MAINTAINER Jason Makar <jmakar@mac.com>

RUN apk add --update \
    python \
    py-pip \
&& pip install ucsmsdk \
&& rm -rf /var/cache/apk/*

COPY example_json /
COPY ucs_ppt_py /