FROM ubuntu:16.04
LABEL maintainer="jeffrey.hanson@uqconnect.edu.au"

# install system libs
RUN apt-get update --fix-missing \
  && apt-get install -y --no-install-recommends \
    bzip2 \
    ca-certificates \
    git \
    wget \
    curl \
    sudo \
    vim \
    less

# install miniconda and bioconda
RUN wget --no-check-certificate -O /tmp/miniconda-install.sh \
  https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh \
  && chmod 777 /tmp/miniconda-install.sh \
  && sh /tmp/miniconda-install.sh -b \
  && /root/miniconda3/bin/conda update conda \
  && /root/miniconda3/bin/conda config --add channels defaults \
  && /root/miniconda3/bin/conda config --add channels bioconda \
  && /root/miniconda3/bin/conda config --add channels conda-forge \
  && echo ". /root/miniconda3/etc/profile.d/conda.sh\n" >> ~/.bashrc \
  && echo "conda activate base" >> ~/.bashrc \
  && rm tmp/miniconda-install.sh

# install bioconda software
RUN /root/miniconda3/bin/conda install -y -c bioconda \
  perl-velvetoptimiser=2.2.5 \
  velvet=1.2.10 \
  fastp=2.2.5 \
  fastqc=0.11.8

# set default command
CMD [ "/bin/bash" ]
