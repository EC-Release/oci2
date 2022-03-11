FROM alpine:3.15

MAINTAINER Apolo Yasuda "apolo.yasuda@ge.com"

USER root
WORKDIR /root

RUN echo 'export PATH=$PATH:$HOME/.ec' >> /etc/profile

RUN echo '#!/bin/bash' >> ./~tmp.sh && \
echo 'source <(wget -O - https://raw.githubusercontent.com/EC-Release/sdk/disty/scripts/agt/v1.2beta.linux64_conf.txt) "$@"' >> ./~tmp.sh && \
chmod +x ./~tmp.sh && ls -al ./ && cat ./~tmp.sh

ENTRYPOINT ["/root/~tmp.sh"]
