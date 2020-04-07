FROM debian:8.11

WORKDIR /var/usr/rust

COPY . .

RUN \
    wget https://umod.org/games/rust/download/develop
