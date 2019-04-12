# 构建镜像

```bash

./build.sh fpm/7.3.3-centos7

```

# 构建并推送镜像

```bash

./push.sh fpm/7.3.3-centos7

```

推送后，可从docker hub拉取该镜像

```bash

docker pull zhengcog/fpm:7.3.3-centos7

```