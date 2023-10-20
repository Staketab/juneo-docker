FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    git \
    libc6 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root

RUN git clone https://github.com/Juneo-io/juneogo-binaries.git
RUN ls -a juneogo-binaries
RUN ls -a juneogo-binaries/plugins
RUN chmod +x juneogo-binaries/juneogo juneogo-binaries/plugins/jevm juneogo-binaries/plugins/srEr2XGGtowDVNQ6YgXcdUb16FGknssLTGUFYg7iMqESJ4h8e

EXPOSE 9650 9651

ENTRYPOINT ["/bin/bash", "-c"]
CMD []
