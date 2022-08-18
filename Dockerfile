ARG python_version=3.7
FROM --platform=linux/arm/v7 balenalib/raspberrypi3-python:${python_version}-run

RUN apt update && apt upgrade
RUN apt install build-essential libffi-dev libssl-dev python3-dev cargo

RUN pip install --upgrade pip
RUN pip install RPi.GPIO pyOpenSSL==21.0.0 balena-sdk

RUN apt purge build-essential python3-dev && apt autoremove
