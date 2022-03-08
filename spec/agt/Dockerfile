FROM alpine:3.15

MAINTAINER Apolo Yasuda "apolo.yasuda@ge.com"

USER root
WORKDIR /root

RUN apk update && apk add --no-cache wget bash jq

RUN echo 'export PATH=$PATH:$HOME/.ec' >> /etc/profile

RUN echo '#!/bin/bash' >> ./entry.sh && \
echo 'source <(wget -O - https://raw.githubusercontent.com/EC-Release/sdk/disty/scripts/agt/v1.2beta.linux64_conf.txt)' >> ./entry.sh && \
echo 'source ~/.ec/agt/conf/agent_v1.2beta.sh "$@"' >> ./entry.sh

RUN chmod +x ./entry.sh

ENTRYPOINT ["./entry.sh"]
