FROM ubuntu:16.04
LABEL maintainer="jeffrey.hanson@uqconnect.edu.au"

# install system libs
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    bzip2 \
    git \
    wget \
    sudo

# install miniconda and bioconda
RUN wget --no-check-certificate -O /tmp/miniconda-install.sh \
  https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh \
  && chmod 777 /tmp/miniconda-install.sh \
  && sh /tmp/miniconda-install.sh -b \
  && conda update conda \
  && echo 'export PATH="${PATH}:/root/miniconda3/bin"' >> ~/.bashrc \
  && /root/miniconda3/bin/conda config --add channels defaults \
  && /root/miniconda3/bin/conda config --add channels bioconda \
  && /root/miniconda3/bin/conda config --add channels conda-forge

# install bioconda software
RUN /root/miniconda3/bin/conda install -y -c bioconda \
  && perl-velvetoptimiser=2.2.5 \
  && velvet=1.2.10 \
  && fastp=2.2.5 \
  && fastqc=0.11.8
