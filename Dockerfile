FROM hypriot/rpi-alpine-scratch

RUN apk update && \
apk upgrade && \
apk add bash && \
apk add libc6-compat && \
rm -rf /var/cache/apk/*
COPY go1.7.1.linux-armv6l.tar.gz /tmp
RUN tar -C /usr/local -xzf /tmp/go1.7.1.linux-armv6l.tar.gz

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
WORKDIR $GOPATH

CMD ["/bin/bash"]
