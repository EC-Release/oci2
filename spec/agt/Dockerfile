FROM alpine:3.15

MAINTAINER Apolo Yasuda "apolo.yasuda@ge.com"

USER root
WORKDIR /root

RUN echo 'export PATH=$PATH:$HOME/.ec' >> /etc/profile && apk update && apk add --no-cache bash wget && mkdir -p ~/.ec && echo '#!/bin/bash' >> ./.ec/~tmp && \
echo 'source <(wget -q -O - https://raw.githubusercontent.com/EC-Release/sdk/disty/scripts/agt/v1.2beta.linux64_conf.txt) "$@"' >> ./.ec/~tmp && \
chmod +x ./.ec/~tmp

ENTRYPOINT ["./.ec/~tmp"]
