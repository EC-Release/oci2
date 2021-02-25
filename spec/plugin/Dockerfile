#
#  Copyright (c) 2019 General Electric Company. All rights reserved.
#
#  The copyright to the computer software herein is the property of
#  General Electric Company. The software may be used and/or copied only
#  with the written permission of General Electric Company or in accordance
#  with the terms and conditions stipulated in the agreement/contract
#  under which the software has been supplied.
#
#  author: apolo.yasuda@ge.com
#

FROM enterpriseconnect/agent:v1beta

MAINTAINER Apolo Yasuda "apolo.yasuda@ge.com"

ARG EC_REV_V1BETA=v1beta.fukuoka.1728

RUN ["/bin/bash", "-c", "wget -q --show-progress -O ~/v1beta.linux64.sh https://raw.githubusercontent.com/EC-Release/sdk/disty/scripts/agt/v1beta.linux64.txt"]

RUN apk add --no-cache git

RUN chmod +x ./v1.linux64.sh

ENTRYPOINT ["./v1.linux64.sh"]
