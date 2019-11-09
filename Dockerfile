FROM alpine:3.10
MAINTAINER gccpacman <gccpacman@gmail.com>

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
