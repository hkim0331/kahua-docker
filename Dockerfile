FROM ubuntu
MAINTAINER Hiroshi Kimura <hiroshi.kimura.0331@gmail.com>

RUN apt-get update && \
    apt-get install -y gauche gauche-dev autoconf make && \
    rm -rf /var/lib/apt/lists/*

VOLUME ["/srv" "/opt" ]
EXPOSE 8888

CMD ["/srv/start.sh"]


