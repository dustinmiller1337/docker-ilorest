FROM ubuntu:21.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      ca-certificates=20200601 \
      libpsl5=0.21.0-1.1ubuntu1 \
      openssl=1.1.1f-1ubuntu4 \
      publicsuffix=20200729.1725-1 \
      wget=1.20.3-1ubuntu1 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN wget -q "https://downloads.linux.hpe.com/SDR/repo/hprest/pool/non-free/ilorest-3.1.1-7_amd64.deb"

RUN dpkg -i ilorest-3.1.1-7_amd64.deb

ENTRYPOINT ["/usr/sbin/ilorest"]
