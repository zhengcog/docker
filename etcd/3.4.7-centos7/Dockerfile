FROM centos:7
MAINTAINER "Hyman" <zhengcog@gmail.com>

ENV ETCD_VER 3.4.7
ENV DOWNLOAD_URL https://github.com/etcd-io/etcd/releases/download
ENV ETCDCTL_API 3

# download etcd
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \
    rm -f /lib/systemd/system/multi-user.target.wants/*;\
    rm -f /etc/systemd/system/*.wants/*;\
    rm -f /lib/systemd/system/local-fs.target.wants/*; \
    rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
    rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
    rm -f /lib/systemd/system/basic.target.wants/*;\
    rm -f /lib/systemd/system/anaconda.target.wants/*;\
    readonly NPROC=$(grep -c ^processor /proc/cpuinfo 2>/dev/null || 1); \
    echo "NPROC=$NPROC"; \
    echo "Installing packages..."; \
    yum install -y wget curl curl-devel; \
    echo "Download etcd..."; \
    curl -L ${DOWNLOAD_URL}/v${ETCD_VER}/etcd-v${ETCD_VER}-linux-amd64.tar.gz -o /tmp/etcd-v${ETCD_VER}-linux-amd64.tar.gz; \
    mkdir -p /tmp/etcd;tar xzvf /tmp/etcd-v${ETCD_VER}-linux-amd64.tar.gz -C /tmp/etcd --strip-components=1; \
    cp /tmp/etcd/{etcd,etcdctl} /usr/local/bin;\
    echo "clean..."; \
    rm -f /tmp/etcd-v${ETCD_VER}-linux-amd64.tar.gz; rm -rf /tmp/etcd;\
    echo "echo etcd version..."; \
    /usr/local/bin/etcd --version; \
    echo "echo etcdctl version..."; \
    /usr/local/bin/etcdctl version;

COPY start.sh /start.sh
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime; \
    mkdir -p /data1/log/php/; \
    chmod +x /start.sh;

# 启动etcd服务
CMD ["/start.sh"]