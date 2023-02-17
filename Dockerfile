FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install build-tools ninja-build gcc-arm-none-eabi