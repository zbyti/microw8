rustc --target=wasm32-unknown-unknown --crate-type cdylib -C opt-level="z" -C "link-args=--import-memory --initial-memory=262144 -zstack-size=65536" -o tunnel.wasm tunnel.rs && \
uw8 filter-exports tunnel.wasm tunnel.wasm && \
wasm-opt -Oz -o tunnel.wasm tunnel.wasm
