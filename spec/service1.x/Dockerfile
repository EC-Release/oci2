FROM node:16-alpine
#FROM node:7

MAINTAINER Enterprise-Connect R&D "ec-research@ge.com"

USER root

WORKDIR /root

RUN apk update && apk add wget && apk add curl && apk add git && apk add tree
RUN curl -L "https://packages.cloudfoundry.org/stable?release=linux64-binary&version=6.49.0&source=github-rel" | tar -zx && \
mv cf /usr/local/bin && \
cf --version

RUN wget -q --show-progress -O v1.linux64.sh https://raw.githubusercontent.com/EC-Release/sdk/disty/scripts/service1.x/v1.linux64.txt

RUN ls -al && chmod 755 v1.linux64.sh

ENTRYPOINT ["./v1.linux64.sh"]
