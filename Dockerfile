# Copyright © 2021 - AudiSoft Consulting (https://www.audisoft.com/).

FROM cirrusci/flutter

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
