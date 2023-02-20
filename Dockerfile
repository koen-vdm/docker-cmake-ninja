FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y cmake build-essential ninja-build gcc-arm-none-eabi