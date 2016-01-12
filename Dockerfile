# Galaxy - Metagenomics
#
# VERSION       16.01

FROM bgruening/galaxy-stable:16.01

MAINTAINER Björn A. Grüning, bjoern.gruening@gmail.com

ENV GALAXY_CONFIG_BRAND Galaxy Metagenomics

# Install deepTools
ADD metagenomics.yaml $GALAXY_ROOT/tools.yaml
RUN install-tools $GALAXY_ROOT/tools.yaml
