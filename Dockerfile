FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    git \
    libc6 \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /root/.juneogo/plugins

RUN git clone https://github.com/Juneo-io/juneogo-binaries.git /root/

COPY /root/juneogo-binaries/juneogo /usr/bin/juneogo
COPY /root/juneogo-binaries/plugins/jevm /root/.juneogo/plugins/jevm
COPY /root/juneogo-binaries/plugins/srEr2XGGtowDVNQ6YgXcdUb16FGknssLTGUFYg7iMqESJ4h8e /root/.juneogo/plugins/srEr2XGGtowDVNQ6YgXcdUb16FGknssLTGUFYg7iMqESJ4h8e

RUN chmod +x /usr/bin/juneogo /root/.juneogo/plugins/jevm /root/.juneogo/plugins/srEr2XGGtowDVNQ6YgXcdUb16FGknssLTGUFYg7iMqESJ4h8e

ENTRYPOINT ["/bin/bash", "-c"]
CMD []
