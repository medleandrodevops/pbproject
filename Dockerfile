FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
# Install.
RUN \
  apt-get update && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y curl git man unzip vim wget && \
  wget https://releases.hashicorp.com/terraform/1.0.6/terraform_1.0.6_linux_amd64.zip && \
  unzip *.zip -d /usr/local/bin/