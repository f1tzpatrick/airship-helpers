#!/bin/bash

# Useful things you'll want to run if you want to interact with the target-cluster

sudo usermod -aG docker $USER
sudo usermod -aG libvirt $USER

sudo chown -R $USER:$USER ~/.airship
sudo chown -R $USER:$USER /tmp/airship

# Copy the generated secrets to your home directory
sudo cp /tmp/treasuremap/treasuremap/manifests/site/test-site/target/encrypted/results/generated/secrets.yaml ~/treasuremap/manifests/site/test-site/target/encrypted/results/generated/secrets.yaml

kubectl config use-context target-cluster
