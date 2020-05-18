#!/bin/bash
set -euo pipefail

# Format all sources using rustfmt.

topdir=$(dirname "$0")
cd "$topdir"

# Make sure we can find rustfmt.
export PATH="$PATH:$HOME/.cargo/bin"

exec cargo +nightly fmt --all -- "$@"
