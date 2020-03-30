FROM centos:7
MAINTAINER "Hyman" <zhengcog@gmail.com>

ENV GOLANG_VERSION 1.14.1
ENV GOPATH /app
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN yum clean all; \
	yum update -y; \
	yum install gcc gcc-c++ wget git -y; \
	yum clean all && yum update -y; \
	wget -O go.tgz "https://dl.google.com/go/go$GOLANG_VERSION.linux-amd64.tar.gz"; \
	tar -C /usr/local -xzf go.tgz; \
    rm -rf /tmp/*

RUN go version; \
	mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH";
	
ENV GO111MODULE on
WORKDIR $GOPATH