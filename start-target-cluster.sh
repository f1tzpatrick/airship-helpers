#!/bin/bash

# This script boots up the target cluster (to use after reboot)

virsh list --all
virsh net-start air_nat
virsh net-start air_prov
virsh start air-target-1
virsh start air-worker-1
virsh list --all
