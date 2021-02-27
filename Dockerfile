FROM ubuntu:21.04

RUN apt-get update
RUN apt install -y wget
RUN apt install -y nano
RUN apt install -y curl
RUN wget https://github.com/la5nta/pat/releases/download/v0.10.0/pat_0.10.0_linux_amd64.deb
RUN dpkg -i pat_0.10.0_linux_amd64.deb
RUN rm pat_0.10.0_linux_amd64.deb
RUN echo 'export EDITOR=nano' >> ~/.profile
RUN cd /root && mkdir .wl2k
