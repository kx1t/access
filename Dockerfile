FROM ghcr.io/sdr-enthusiasts/docker-baseimage:rtlsdr

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# hadolint ignore=DL3008,SC2086,DL4006,SC2039
RUN set -x && \
  KEPT_PACKAGES=() && \
  # packages needed to install
  KEPT_PACKAGES+=(git) && \
  KEPT_PACKAGES+=(ssh) && \
  # install packages
  apt-get update && \
  apt-get install -y --no-install-recommends \
  "${KEPT_PACKAGES[@]}"