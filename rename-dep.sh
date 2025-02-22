#!/usr/bin/env bash

set -exuo pipefail
cd "$(dirname "$0")"

target=$1
sed -i "s/prefix-dep/$target/g" Cargo.toml
sed -i "s/prefix-dep/$target/g" dep/Cargo.toml
