# Universal Blue Base Images

These are Universal Blue base image builds with small changes to the original ublue base image. Everything is built under one single image `ublue-base` with different tags. It is not designed for you to install on a machine.

## Images

- `ublue-base:base` - Built off of `ghcr.io/ublue-os/base-main:latest` with a couple of packages removed, and a couple of packages added. Nothing special.
- `ublue-base:nvidia` - Built off of `ghcr.io/ublue-os/base-nvidia:latest` with a couple of packages removed, and a couple of packages added. Nothing special. UNTESTED, but there should be no issues.
- `ublue-base:kernel-cachyos` - Same as `ublue-base:base` but with the default kernel replaced with CachyOS's kernel.
- `ublue-base:kernel-cachyos-nvidia` - Same as `ublue-base:nvidia` but with the default kernel replaced with CachyOS's kernel. UNTESTED, there is a good chance that the NVIDIA driver does not actually load.

## Verification

These images are signed with [cosign](https://docs.sigstore.dev/cosign/overview/). You can verify the signature by downloading the `cosign.pub` file and running:

```
cosign verify --key cosign.pub ghcr.io/hecknt/ublue-base:TAG
```

