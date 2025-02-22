#!/usr/bin/env bash

set -exuo pipefail
cd "$(dirname "$0")"

cargo run && cargo publish -Z package-workspace --workspace --dry-run --allow-dirty
