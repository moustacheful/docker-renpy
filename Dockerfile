FROM ubuntu:20.04

ARG RENPY_VERSION
ENV RENPY_VERSION=${RENPY_VERSION}
RUN apt-get update
RUN apt-get install wget libgl1-mesa-glx -y

RUN wget -O renpy.tar.bz2 https://www.renpy.org/dl/${RENPY_VERSION}/renpy-${RENPY_VERSION}-sdk.tar.bz2
RUN tar xjf ./renpy.tar.bz2
RUN rm ./renpy.tar.bz2

# Renpy will be available in /renpy/renpy.sh
RUN mv renpy* renpy
