#!/bin/bash

# This script replaces real version numbers in the catalog with easy to spot replacements.
# This can be useful when debugging a replacement transformer
sed -ri "s/(image:\s)(.*)/\1IMAGE/g" $HOME/treasuremap/manifests/function/treasuremap-base-catalogues/versions-treasuremap.yaml
sed -ri "s/(tag:\s)(.*)/\1TAG/g" $HOME/treasuremap/manifests/function/treasuremap-base-catalogues/versions-treasuremap.yaml
sed -ri "s/(version:\s)(.*)/\1VERSION/g" $HOME/treasuremap/manifests/function/treasuremap-base-catalogues/versions-treasuremap.yaml
sed -ri "s/(repository:\s)(.*)/\1REPOSITORY/g" $HOME/treasuremap/manifests/function/treasuremap-base-catalogues/versions-treasuremap.yaml
