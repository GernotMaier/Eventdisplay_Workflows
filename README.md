# Eventdisplay_Workflows

Eventdisplay workflows using the [Snakemake](https://snakemake.readthedocs.io/en/stable/index.html) workflow management system.

## Installation

Installation of Snakemake (see [Snakemake documentation](https://snakemake.readthedocs.io/en/stable/getting_started/installation.html)).

Installation of mamba package manager (additionaly to conda):
```
conda install -n base -c conda-forge mamba
mamba create -c conda-forge -c bioconda -n snakemake snakemake
```

## Workflows

Using apptainer:
set environmental variables for `$APPTAINER_DOCKER_PASSWORD` and `$APPTAINER_DOCKER_USERNAME`.
```
snakemake --cores 1 --use-singularity --singularity-args "--no-home " -s workflow/Snakefile
```

Submit to gridengine:
```
snakemake --cores 1 --jobs 1 --cluster "qsub " --use-singularity --singularity-args "--no-home " -s workflow/Snakefile
```

(remark below)
```
snakemake --cores 1 --jobs 1 -p --cluster "apptainer exec docker://ghcr.io/veritas-observatory/v2dl3:pr-171-v2dl3-eventdisplay " results/64080.fits.gz
```

## HTCondor

mamba install -c conda-forge python-htcondor

