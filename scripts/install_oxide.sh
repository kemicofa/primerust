#!/bin/sh
curl -sL "https://github.com/OxideMod/Oxide.Rust/releases/download/${OXIDE_RUST_VERSION}/${OXIDE_RUST_FILE_NAME}" -O && \
    unzip $OXIDE_RUST_FILE_NAME && \
    rm $OXIDE_RUST_FILE_NAME