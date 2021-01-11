# Copyright © 2021 - AudiSoft Consulting (https://www.audisoft.com/).

FROM cirrusci/flutter

LABEL org.opencontainers.image.version="0.3.0" \
      org.opencontainers.image.title="flutter_web" \
      org.opencontainers.image.description="Ubuntu-based Docker image with web-enabled Flutter" \
      org.opencontainers.image.authors="AudiSoft Consulting (https://www.audisoft.com/)" \
      org.opencontainers.image.vendor="AudiSoft Consulting (https://www.audisoft.com/)" \
      org.opencontainers.image.documentation="https://github.com/AudiSoft/flutter_web/blob/master/README.md" \
      org.opencontainers.image.licenses="https://github.com/AudiSoft/flutter_web/blob/master/LICENSE" \
      org.opencontainers.image.url="https://ghcr.io/audisoft/flutter_web" \
      org.opencontainers.image.source="https://github.com/AudiSoft/flutter_web" \
      org.opencontainers.image.revision=$VCS_REF \
      org.opencontainers.image.created=$BUILD_DATE

# Run as ROOT
USER root

# Disable Google Analytics
RUN flutter config --no-analytics

# Switch to beta channel
RUN flutter channel beta

# Upgrade Flutter
RUN flutter upgrade

# Run Flutter doctor
RUN flutter doctor -v
