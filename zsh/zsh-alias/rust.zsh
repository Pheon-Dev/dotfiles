#!/bin/zsh

alias co="cargo"
alias cx="cargo remove"
alias cn="cargo new"
alias ca="cargo add"
alias cr="cargo run"
alias ct="cargo test"
alias cw="cargo-watch"
alias cb="cargo build"
alias ci="cargo install"

alias crp="cargo publish"
alias crb="cargo bench"
alias crd="cargo doc"

alias re="rustc --explain"

# manta
alias ctst='cargo-watch -q -c -w examples/ -x "test -q quick_dev -- --nocapture"'
alias cwtc="cargo-watch -q -c -w src/ -x run"
