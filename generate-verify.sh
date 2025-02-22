#!/usr/bin/env bash

set -exuo pipefail
cd "$(dirname "$0")"

if [ -z "$1" ]; then
  echo "Usage: $0 <number>"
  exit 1
fi

name="seed"

for ((i=0; i<$1; i++)); do
    echo "Iteration $i"
    git checkout .
    name=$(echo $name | md5sum | tr -d '0-9' | head -c 12)
    name="prefix-$name"
    ./rename-dep.sh $name
    ./verify.sh
done
