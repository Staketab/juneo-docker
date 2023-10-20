FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    git \
    libc6 \
    && rm -rf /var/lib/apt/lists/*

#RUN git clone https://github.com/Juneo-io/juneogo-binaries.git
RUN wget https://github.com/Juneo-io/juneogo-binaries/raw/main/juneogo && \
    wget https://github.com/Juneo-io/juneogo-binaries/raw/main/plugins/jevm && \
    wget https://github.com/Juneo-io/juneogo-binaries/raw/main/plugins/srEr2XGGtowDVNQ6YgXcdUb16FGknssLTGUFYg7iMqESJ4h8e && \
    ls -la
    
RUN mkdir -p /root/.juneogo/plugins

COPY ./juneogo /usr/bin/juneogo
COPY ./jevm /root/.juneogo/plugins/jevm
COPY ./srEr2XGGtowDVNQ6YgXcdUb16FGknssLTGUFYg7iMqESJ4h8e /root/.juneogo/plugins/srEr2XGGtowDVNQ6YgXcdUb16FGknssLTGUFYg7iMqESJ4h8e

RUN chmod +x /usr/bin/juneogo /root/.juneogo/plugins/jevm /root/.juneogo/plugins/srEr2XGGtowDVNQ6YgXcdUb16FGknssLTGUFYg7iMqESJ4h8e

ENTRYPOINT ["/bin/bash", "-c"]
CMD []
