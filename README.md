# Eventdisplay_Workflows

Eventdisplay workflows using the [Snakemake](https://snakemake.readthedocs.io/en/stable/index.html) workflow management system.

## Installation

Installation of Snakemake (see [Snakemake documentation](https://snakemake.readthedocs.io/en/stable/getting_started/installation.html)

Installation of mamba package manager (additionaly to conda):
```
conda install -n base -c conda-forge mamba
mamba create -c conda-forge -c bioconda -n snakemake snakemake
```

## Workflows

Testing:

```
snakemake --cores 1 -p data/output/64080.fits.gz
```

Using apptainer:
use APPTAINER_DOCKER_PASSWORD and APPTAINER_DOCKER_USERNAME
```
snakemake --use-singularity --cores 1 -p data/output/64080.fits.gz
```
