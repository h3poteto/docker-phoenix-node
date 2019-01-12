FROM h3poteto/phoenix:1.7.3

USER root

RUN set -ex && \
    apt-get update && \
    apt-get install -y gnupg2 && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get install -y nodejs && \
    rm -rf /var/lib/apt/lists/*

USER elixir
