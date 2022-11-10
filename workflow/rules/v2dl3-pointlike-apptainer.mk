configfile: "config/config_docker.yml"

rule v2_dl3_pointlike: 
	output: 
		"data/output/{runnumber}.fits.gz"
	input: 
		"data/input/{runnumber}.anasum.root"
	log:
		"data/logs/{runnumber}.v2ld3_pointlike.log"
	container:
		"docker://ghcr.io/veritas-observatory/v2dl3:pr-171-v2dl3-eventdisplay"
	shell:
		"python /V2DL3/pyV2DL3/script/v2dl3_for_Eventdisplay.py -f {input} data/input/effectiveArea.root {output}"
