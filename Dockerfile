FROM alpine:3.6

#Base settings

#Install ZeroNet
RUN apk --update upgrade \
  && apk --no-cache --no-progress add musl-dev gcc python python-dev py2-pip tor \
  && pip install gevent msgpack \
  && apk del musl-dev gcc python-dev py2-pip \
  && rm -rf /var/cache/apk/* /tmp/* /var/tmp/* \
  && echo "ControlPort 9051" >> /etc/tor/torrc \
  && echo "CookieAuthentication 1" >> /etc/tor/torrc \
  && apk add tini \
  && apk add bash

RUN mkdir -p zeronet \
  && adduser -D -h /zeronet -u 1000 -G users zeronet \
  && chown zeronet:users zeronet \
  && chmod +x command
CMD ["bash while :; do     sleep 3600; done"]


#Expose ports
EXPOSE 43110  13984
