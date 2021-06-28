#!/bin/bash

# Useful things you might want to run if you interact with the target-cluster

# Add yourself to docker & libvirt groups
sudo usermod -aG docker $USER
sudo usermod -aG libvirt $USER

# `chown` some directories that were created by the gate as root
sudo chown -R $USER:$USER ~/.kube
sudo chown -R $USER:$USER ~/.airship
sudo chown -R $USER:$USER ~/.ansible
sudo chown -R $USER:$USER /tmp/treasuremap

# Save the generated secrets from /tmp into your home .airship and local repo
sudo cp /tmp/treasuremap/treasuremap/manifests/site/test-site/target/encrypted/results/generated/secrets.yaml ~/.airship/generated-secrets.yaml
sudo cp ~/.airship/generated-secrets.yaml ~/treasuremap/manifests/site/test-site/target/encrypted/results/generated/secrets.yaml

# Backup and update the generated airshipctl config file
mv ~/.airship/config ~/.airship/generated-config.yaml
cp ~/airship-helpers/treasuremap-config.yaml ~/.airship/config

# Fill in the user's name in the new airship config file
sed -i "s/user/$USER/g" ~/.airship/config

# Set KUBECONFIG & configure context
export KUBECONFIG=~/.airship/kubeconfig
kubectl config use-context target-cluster
