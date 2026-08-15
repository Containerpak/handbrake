FROM ghcr.io/containerpak/gtk4:main

LABEL org.opencontainers.image.source="https://github.com/Containerpak/handbrake"

RUN apt-get update && \
    apt-get install -y --no-install-recommends handbrake && \
    cpak-clean-junk

COPY fr.handbrake.ghb.desktop /usr/share/applications/fr.handbrake.ghb.desktop
