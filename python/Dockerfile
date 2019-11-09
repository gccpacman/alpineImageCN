FROM alpine:3.10
MAINTAINER gccpacman <gccpacman@gmail.com>

# Set Env
ENV HOME=/root \
    GLIBC_REPO=https://github.com/sgerrand/alpine-pkg-glibc \
    GLIBC_VERSION=2.29-r0 \
    LANG=zh_CN.UTF-8 \
    LANGUAGE=zh_CN:zh \
    LC_ALL=zh_CN.UTF-8 \
    TZ=Asia/Shanghai

# Switch Source to Aliyun
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

# Install Tools and Dependencies
RUN set -ex && apk -U upgrade
RUN apk --no-cache add tar curl wget git jq tzdata ca-certificates
RUN apk --no-cache add libstdc++ java-cacerts

# Set TimeZone And CharMap
RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
    wget ${GLIBC_REPO}/releases/download/${GLIBC_VERSION}/glibc-${GLIBC_VERSION}.apk && \
    wget ${GLIBC_REPO}/releases/download/${GLIBC_VERSION}/glibc-bin-${GLIBC_VERSION}.apk && \
    wget ${GLIBC_REPO}/releases/download/${GLIBC_VERSION}/glibc-i18n-${GLIBC_VERSION}.apk && \
    apk add glibc-${GLIBC_VERSION}.apk glibc-bin-${GLIBC_VERSION}.apk glibc-i18n-${GLIBC_VERSION}.apk
RUN rm glibc-${GLIBC_VERSION}.apk glibc-bin-${GLIBC_VERSION}.apk glibc-i18n-${GLIBC_VERSION}.apk
RUN cp /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN /usr/glibc-compat/sbin/ldconfig /lib /usr/glibc-compat/lib
RUN /usr/glibc-compat/bin/localedef -i zh_CN -f UTF-8 zh_CN.UTF-8
RUN echo "export LANG=C.UTF-8" > /etc/profile.d/locale.sh

# Install Python3
ENV PYTHONUNBUFFERED=1

RUN apk add --no-cache python3 && \
    if [ ! -e /usr/bin/python ]; then ln -sf python3 /usr/bin/python ; fi && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    mkdir /root/.pip/ && \
    echo "[global]\nindex-url = http://pypi.douban.com/simple\ntrusted-host = pypi.douban.com" > /root/.pip/pip.conf && \
    pip3 install --no-cache --upgrade pip setuptools wheel && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi

# Change work directry
RUN mkdir -p /data

WORKDIR /data

CMD ["/bin/sh"]