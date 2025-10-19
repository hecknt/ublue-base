# Universal Blue Base Images

These are Universal Blue base image builds with small changes to the original ublue base image. Everything is built under one single image `ublue-base` with different tags. It is not designed for you to install on a machine.

## Verification

These images are signed with [cosign](https://docs.sigstore.dev/cosign/overview/). You can verify the signature by downloading the `cosign.pub` file and running:

```
cosign verify --key cosign.pub ghcr.io/hecknt/ublue-base:TAG
```

