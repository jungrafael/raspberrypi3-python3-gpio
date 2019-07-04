FROM balenalib/raspberrypi3-python:3.6-run

RUN apt update && apt upgrade
RUN apt install build-essential libffi-dev libssl-dev
RUN pip install RPi.GPIO
RUN pip install balena-sdk
RUN apt purge build-essential
RUN apt autoremove
