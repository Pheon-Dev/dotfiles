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
alias ytd="yarn tauri dev"

# manta
alias cwt='cargo-watch -q -c -w examples/ -x "run --example quick_dev"'
# alias cwr="cargo-watch -q -c -w src/ -w .cargo/ -x run"
alias cwr="cargo-watch -q -c -w src/ -x run"
