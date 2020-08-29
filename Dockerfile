# Build yaml-hound
FROM golang:1.13.12-alpine AS hound-builder
RUN apk add go git bash make npm rsync

ENV GOPATH /go
COPY . /go/src/github.com/ryanaross/yaml-hound
WORKDIR /go/src/github.com/ryanaross/yaml-hound 
RUN make

# Construct yaml-hound container
FROM alpine:3.12.0

COPY --from=hound-builder /go/bin/houndd /bin/houndd
COPY default-config.json /config.json

VOLUME ["/data"]

EXPOSE 6080

ENTRYPOINT ["/bin/houndd", "-conf", "/config.json"]
