[![Docker Build Status](https://img.shields.io/docker/build/jeffreyhanson/ngs-tools.svg)](https://hub.docker.com/r/jeffreyhanson/ngs-tools/)
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-brightgreen.svg)](https://www.gnu.org/licenses/gpl-3.0)

# Tools for Next Generation Sequencing data

### Overview

This repository contains instructions for building a [Docker container](https://www.docker.com/) that contains some tools for processing Next Generation Sequencing data.

## Usage

To download the image, execute the following command in the terminal:

    docker pull "jeffreyhanson/ngs-tools:latest"

### Software

| **Name** | **Version** | **Description**
| :----------: | :---------: | :----------: |
| [fastp](https://github.com/OpenGene/fastp) | 2.2.5 | An ultra-fast all-in-one FASTQ preprocessor (QC/adapters/trimming/filtering/splitting...)
| [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/) | 0.11.8 | A quality control tool for high throughput sequence data.
| [Velvet](https://www.ebi.ac.uk/~zerbino/velvet/) | 1.2.10 | Sequence assembler for very short reads
| [VelvetOptimizer](http://www.vicbioinformatics.com/software.velvetoptimiser.shtml) | 2.2.5 | VelvetOptimiser is a multi-threaded Perl script for automatically optimising the three primary parameter options (K, -exp_cov, -cov_cutoff) for the Velvet de novo sequence assembler
