FROM alpine

RUN apk update && \
  apk add --no-cache git perl && \
  cd /tmp && \
  git clone https://github.com/jasonm23/cowsay.git  && \
  cd cowsay ; ./install.sh /usr/local && \
  rm -rf /var/cache/apk/* /var/tmp/* /tmp/* && \
  apk del git

ENTRYPOINT ["/usr/local/bin/cowsay"]
