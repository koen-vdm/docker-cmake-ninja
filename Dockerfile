FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y python3 python3-pip cmake build-essential ninja-build gcc-arm-none-eabi curl unzip nodejs git clang-15 wkhtmltopdf wget
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && rm awscliv2.zip
RUN ./aws/install
RUN pip install imgkit