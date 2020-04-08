FROM debian:buster

ARG OXIDE_RUST_VERSION
ARG PASS

ENV OXIDE_RUST_FILE_NAME Oxide.Rust-linux.zip
ENV USER primerust
ENV SCRIPTS /var/usr/${USER}
ENV UID 1000
ENV GID 1000

WORKDIR ${SCRIPTS}

COPY . .

RUN ${SCRIPTS}/scripts/install_dependencies.sh
RUN ${SCRIPTS}/scripts/user_security.sh

USER ${UID}:${GID}
WORKDIR /home/${USER}

RUN ${SCRIPTS}/scripts/install_rust.sh
RUN ${SCRIPTS}/scripts/install_oxide.sh

CMD ./scripts/start_rust.sh