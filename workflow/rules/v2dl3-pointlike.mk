configfile: "config/config_docker.yml"

container_command = expand(
	"{container_prefix} {container_image}", 
	container_prefix=config['container_prefix'], 
	container_image=config['container_image'])

rule v2_dl3_pointlike: 
	output: 
		"data/output/{runnumber}.fits.gz"
	input: 
		"data/input/{runnumber}.anasum.root"
	log:
		"data/logs/{runnumber}.v2ld3_pointlike.log"
	shell:
		"{container_command} python /V2DL3/pyV2DL3/script/v2dl3_for_Eventdisplay.py -f /{input} /data/input/effectiveArea.root /{output}"
