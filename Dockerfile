FROM node:20.5.0-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends build-essential git procps openssh-client git bzip2 graphviz calibre fonts-noto fonts-noto-cjk locales-all && \
    rm -rf /var/lib/apt/lists/*

RUN npm config set unsafe-perm true && \
    npm install gitbook-cli svgexport -g

WORKDIR /books

VOLUME [/books]