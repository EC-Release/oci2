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

FROM python:slim                                                                                                                        
                                                                                                                                             
MAINTAINER Apolo Yasuda "apolo.yasuda@ge.com"                                                                                                
                                                                                                                                             
USER root                                                                                                                                    
WORKDIR /root                                                                                                                                
                                                                                                                                             
RUN echo 'export PATH=$PATH:$HOME/.ec' >> /etc/profile && apt update && apt install -y wget bash jq coreutils dnsutils curl && \
mkdir -p ~/.ec && echo '#!/bin/bash' > ./~sdr && \
echo 'source <(wget -q -O - https://raw.githubusercontent.com/EC-Release/sdk/disty/scripts/api/v1.2beta.linux64.txt) "$@"' >> ./~sdr && \
chmod +x ./~sdr
                                                                                                                              
ENTRYPOINT ["./~sdr"]
