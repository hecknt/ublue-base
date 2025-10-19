ARG BASE_IMAGE="base-main"
ARG IMAGE="base"
ARG TAG_VERSION="latest"
ARG AKMODS_BAZZITE_DIGEST=""
ARG AKMODS_BAZZITE_NVIDIA_DIGEST=""
ARG AKMODS_NVIDIA_DIGEST=""

# Allow build scripts to be referenced without being copied into the final image
FROM scratch AS ctx
COPY build_files /
COPY cosign.pub /

# Base Image
FROM ghcr.io/ublue-os/${BASE_IMAGE}:${TAG_VERSION}

ARG BASE_IMAGE="base-main"
ARG IMAGE="base"
ARG SET_X=""
ARG VERSION=""
ARG DNF=""

RUN --mount=type=bind,from=ctx,source=/,target=/ctx \
    --mount=type=cache,dst=/var/cache \
    --mount=type=cache,dst=/var/log \
    --mount=type=tmpfs,dst=/tmp \
    /ctx/build.sh && \
    ostree container commit
