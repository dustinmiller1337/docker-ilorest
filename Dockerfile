FROM ubuntu:21.04

RUN apt update && \
    apt install -y wget && \
    apt clean all

RUN wget -q "https://downloads.linux.hpe.com/SDR/repo/hprest/pool/non-free/ilorest-3.1.1-7_amd64.deb"

RUN dpkg -i ilorest-3.1.1-7_amd64.deb

ENTRYPOINT ["/usr/sbin/ilorest"]
