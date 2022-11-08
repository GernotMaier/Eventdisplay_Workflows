rule v2_dl3_pointlike: 
	output: 
		"{runnumber}.fits.gz"
	input: 
		"/Users/maierg/Downloads/v2dl3/ci/64080.anasum.root"
	log:
		"/tmp/snakemake/logs/{runnumber}.v2ld3_pl.log"
	conda:
		"../envs/v2dl3-pointlike.yml"
	shell: 
		"echo {input} {output} {runnumber}"
