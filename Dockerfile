# Galaxy - Metagenomics
#
# VERSION       16.01

FROM quay.io/bgruening/galaxy:16.01

MAINTAINER Björn A. Grüning, bjoern.gruening@gmail.com

ENV GALAXY_CONFIG_BRAND Galaxy Metagenomics

# Install deepTools
ADD metagenomics.yaml $GALAXY_ROOT/tools.yaml
RUN install-tools $GALAXY_ROOT/tools.yaml

# Install Phinch IE
RUN wget https://github.com/shiltemann/phinch-galaxy-ie/archive/master.zip \
    && unzip master.zip \
    && mv phinch-galaxy-ie-master/GIE/phinch/ config/plugins/interactive_environments/ \
    && rm master.zip phinch-galaxy-ie-master -rf

