#!/bin/bash

# Download and register the development key in your environment

if [ ! -f ~/dey-key.asc ]; then
    curl -fsSL -o ~/dev-key.asc https://raw.githubusercontent.com/mozilla/sops/master/pgp/sops_functional_tests_key.asc
fi

export SOPS_IMPORT_PGP="$(cat ~/dev-key.asc)"
export SOPS_PGP_FP="FBC7B9E2A4F9289AC0C1D4843D16CEE4A27381B4"
