FROM debian:buster

ARG OXIDE_RUST_VERSION
ARG PASS

ENV OXIDE_RUST_FILE_NAME Oxide.Rust-linux.zip
ENV USER primerust
ENV SCRIPTS /var/usr/${USER}
WORKDIR ${SCRIPTS}

COPY . .

RUN \
    ./scripts/security.sh && \
    ./scripts/install_dependencies.sh
    

RUN ./scripts/install_rust.sh
RUN ./scripts/install_oxide.sh

CMD ./scripts/start_rust.sh