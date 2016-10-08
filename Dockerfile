FROM hypriot/rpi-alpine-scratch

RUN apk update && \
apk upgrade && \
apk add bash && \
apk add libc6-compat && \
Message from syslogd@raspberrypi at Oct  8 22:14:21 ...
 kernel:[13187.084758] unregister_netdevice: waiting for lo to become free. Usage count = 1r -C /usr/local -xzf /tmp/go1.7.1.linux-armv6l.tar.gz

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
WORKDIR $GOPATH

CMD ["/bin/bash"]
