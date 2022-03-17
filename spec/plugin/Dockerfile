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

FROM enterpriseconnect/agent:v1

MAINTAINER Apolo Yasuda "apolo.yasuda@ge.com"

USER root                                                                                                                                    
WORKDIR /root                                                                                                                                
                                                                                                                                             
RUN apt update && apt install -y git && echo 'export PATH=$PATH:$HOME/.ec' >> /etc/profile && mkdir -p ~/.ec && echo '#!/bin/bash' > ./.ec/~tmp && \
echo 'source <(wget -q -O - https://raw.githubusercontent.com/EC-Release/sdk/disty/scripts/agt/v1.linux64.txt) "$@"' >> ./.ec/~tmp && \
chmod +x ./.ec/~tmp

ENTRYPOINT ["./.ec/~tmp"]
