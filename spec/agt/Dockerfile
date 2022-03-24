FROM debian:11-slim

MAINTAINER Apolo Yasuda "apolo.yasuda@ge.com"

USER root
WORKDIR /root

RUN echo 'export PATH=$PATH:$HOME/.ec' >> /etc/profile && apt update && apt install -y wget curl && mkdir -p ~/.ec && echo '#!/bin/bash' >> ./~tmp && \
echo 'source <(wget -q -O - https://raw.githubusercontent.com/EC-Release/sdk/disty/scripts/agt/v1.2beta.linux64_conf.txt) "$@"' >> ./~tmp && \
chmod +x ./~tmp

ENTRYPOINT ["./~tmp"]
