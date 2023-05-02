FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y python3 cmake build-essential ninja-build gcc-arm-none-eabi curl unzip nodejs git
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && rm awscliv2.zip
RUN ./aws/install

######## to be removed upon release
# install development tools
RUN apt install -y git nano
ENTRYPOINT ["tail", "-f", "/dev/null"]
COPY setup.sh /root/setup.sh