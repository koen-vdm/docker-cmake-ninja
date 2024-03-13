FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install
RUN apt install -y python3 python3-pip curl unzip nodejs git wkhtmltopdf
RUN apt install -y cmake build-essential ninja-build gcc-arm-none-eabi
RUN apt install -y clang-15 wget libc6-armel-cross libc++ lsb-release software-properties-common gnupg
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && rm awscliv2.zip
RUN ./aws/install
RUN wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.focal_amd64.deb
RUN sudo dpkg -i wkhtmltox_0.12.6-1.focal_amd64.deb
RUN pip install imgkit bs4

######## to be removed upon release
# install development tools
RUN apt install -y git nano
ENTRYPOINT ["tail", "-f", "/dev/null"]
