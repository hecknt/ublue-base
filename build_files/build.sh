#!/bin/bash

set -ouex pipefail

# for builds where the CachyOS kernel should be installed
case "${IMAGE}" in
  "kernel-cachyos"*)
  /ctx/kernel-cachyos.sh
  ;;
esac

# General package stuff
/ctx/packages.sh
