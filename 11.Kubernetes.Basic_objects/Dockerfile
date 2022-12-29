FROM ubuntu:20.04

LABEL Author="Belov Ivan"
LABEL Email="chicaragua@gmail.com"
LABEL BaseImage="ubuntu:20.04"

RUN apt-get update -y && apt-get install curl -y
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends --no-install-suggests -y \
    curl ca-certificates libssl-dev \
    && rm -rf /var/lib/apt/lists/*
RUN useradd -m runner
WORKDIR /home/runner/actions-runner
RUN curl -o actions-runner-linux-x64-2.299.1.tar.gz -L https://github.com/actions/runner/releases/download/v2.299.1/actions-runner-linux-x64-2.299.1.tar.gz \
&& tar xzf actions-runner-linux-x64-2.299.1.tar.gz
RUN ./bin/installdependencies.sh
RUN pwd
COPY start.sh ./
RUN chmod +x start.sh
USER runner
ENTRYPOINT ["./start.sh"]