FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    git \
    libc6 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root

RUN mkdir -p ./juneogo/plugins

RUN git clone https://github.com/Juneo-io/juneogo-binaries.git && \
    cp -r juneogo-binaries/juneogo /usr/bin/juneogo && \
    ls juneogo-binaries/plugins/ && \
    cp -r juneogo-binaries/plugins/* ./juneogo/plugins/

RUN chmod +x /usr/bin/juneogo ./juneogo/plugins/jevm ./juneogo/plugins/srEr2XGGtowDVNQ6YgXcdUb16FGknssLTGUFYg7iMqESJ4h8e
RUN ls -a ./juneogo/plugins/

EXPOSE 9650 9651

ENTRYPOINT ["/bin/bash", "-c"]
CMD []
