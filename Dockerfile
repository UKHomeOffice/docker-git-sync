FROM k8s.gcr.io/git-sync:v3.1.1

RUN apt-get update \
    && apt-get -y install \
        ca-certificates \
        coreutils \
        git \
        openssh-client \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/{ARG_BIN}"]