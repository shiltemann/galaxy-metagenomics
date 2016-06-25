# Galaxy - Metagenomics
#
# VERSION       16.04

FROM quay.io/bgruening/galaxy:dev

MAINTAINER Björn A. Grüning, bjoern.gruening@gmail.com

ENV GALAXY_CONFIG_BRAND Galaxy Metagenomics
ENV ENABLE_TTS_INSTALL True

# Install deepTools
ADD metagenomics.yaml $GALAXY_ROOT/tools.yaml
RUN install-tools $GALAXY_ROOT/tools.yaml
