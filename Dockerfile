FROM balenalib/raspberrypi3-python:3.6-run

RUN apt update && apt upgrade
RUN apt install build-essential
RUN pip install RPi.GPIO
RUN apt purge build-essential
RUN apt autoremove
